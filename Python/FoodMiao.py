import math
import os

import pymysql
import requests
from selenium import webdriver
from selenium.webdriver.common.by import By
from xpinyin import Pinyin

database = pymysql.connect(host='localhost', user='root',
                           passwd='zaoyi...', database="slim")
print('数据库连接成功！')
cursor = database.cursor()
driver = webdriver.Chrome()
driver.implicitly_wait(5)
driver.maximize_window()
baseurl = 'https://www.miaofoods.com/'
requesturl = 'https://www.miaofoods.com/miaozsPc/foodHome/getFoodHomeInfo?'
food_path = "E:\\WebProject\\Resource\\Slim\\foods\\"
food_type_path = "E:\\WebProject\\Resource\\Slim\\food_type\\"
driver.get(baseurl)
AllFoodType = driver.find_elements(By.CLASS_NAME, 'itemBox')
p = Pinyin()

for FoodTypeIndex in range(29, len(AllFoodType)):
    href = AllFoodType[FoodTypeIndex].get_attribute("href")
    cateType = href[31:41]
    url = requesturl + 'param={"cateName":"' + cateType + '","range":{"page":0,"pageSize":100}}'
    re = requests.get(url)
    result = re.json()
    result = result['result']
    total = result["total"]
    if total > 1000:
        total = 1000
    tempFoodList = result["list"]
    currentCate = result["foodCateList"][FoodTypeIndex]
    counts = math.floor(total / 100)
    remaining = total - counts * 100
    hasRemaining = 0
    if remaining != 0:
        counts = counts + 1
        hasRemaining = 1
    for pager in range(counts):
        url = ""
        if pager == counts - 1 and hasRemaining == 1:
            url = requesturl + 'param={"cateName":"' + cateType + '","range":{"page":' + str(
                pager) + ',"pageSize":' + str(
                remaining) + '}}'
        else:
            url = requesturl + 'param={"cateName":"' + cateType + '","range":{"page":' + str(
                pager) + ',"pageSize":100}}'
        re = requests.get(url)
        result = re.json()
        result = result['result']
        print(url)
        tempFoodList = result["list"]
        for FoodIndex in range(len(tempFoodList)):
            tempFood = tempFoodList[FoodIndex]
            foodIcon = tempFood["foodIcon"]
            foodName = tempFood["foodName"]
            foodPinyin = p.get_pinyin(foodName, "")
            foodPinyin = "".join(filter(str.isalnum, foodPinyin))
            food_img_path = requests.get(foodIcon)
            if not os.path.exists(food_path + str(FoodTypeIndex) + "\\"):
                os.makedirs(food_path + str(FoodTypeIndex) + "\\")
            img_food_path = food_path + str(FoodTypeIndex) + "\\" + foodPinyin.replace('/', 'or') + ".png"
            foodImgSavePath = foodPinyin.replace('/', 'or') + ".png"
            with open(img_food_path, 'wb') as f:
                f.write(food_img_path.content)
            f.close()
            foodCalories = tempFood["foodCaloriesVal"]
            foodCarbohydrate = tempFood["foodCarbohydrateVal"]
            foodProtein = tempFood["foodProteinVal"]
            foodFat = tempFood["foodFatVal"]
            sql_food = f"""insert into t_food (food_name,food_image,food_type_id,food_calories,food_carbohydrate,food_protein,food_fat) \
                           VALUES ('{foodName.strip().replace("'", "''").replace('/', 'or')}','{foodImgSavePath}','{FoodTypeIndex}','{foodCalories}','{foodCarbohydrate}','{foodProtein}','{foodFat}')"""
            cursor.execute(sql_food)
            print(foodName + "插入成功")
    foodTypeName = currentCate['cateName']
    imageUrl = currentCate['imageUrl']
    food_type_img_path = requests.get(imageUrl)
    foodTypeNamePinyin = p.get_pinyin(foodTypeName)
    foodImgSavePath = foodTypeNamePinyin.replace('/', 'or') + ".png"
    if not os.path.exists(food_type_path + str(FoodTypeIndex) + "\\"):
        os.makedirs(food_type_path + str(FoodTypeIndex) + "\\")
    foodTypeImgSavePath = food_type_path + str(FoodTypeIndex) + "\\" + foodImgSavePath
    with open(foodTypeImgSavePath, 'wb') as f:
        f.write(food_type_img_path.content)
    f.close()
    sql_food_type = f"""insert into t_food_type (food_type_id,food_type_name,food_type_pinyin,food_type_img) \
                VALUES ('{FoodTypeIndex}','{foodTypeName}','{foodTypeNamePinyin}','{foodTypeImgSavePath}')"""
    cursor.execute(sql_food_type)
    try:
        database.commit()
        print("食物类型'" + foodTypeName + "'已存储到存储到数据库==================================================")
    except Exception as e:
        print(e)
        database.rollback()

driver.quit()
