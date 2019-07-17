package package2;

/**
 * FileName: Produce
 * Author: nanzong
 * Date: 2019/7/16 2:27 PM
 * Description: 商品对象
 * History:
 */
public class Produce {
    //    商品名称
    private String name = "电吉他";
    //    商品价格
    private double price = 1880.5;
    //    商品数量
    private int count = 100;
    //    出厂地址
    private String factoryAdd = "吉林省长春市xxx琴行";

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getFactoryAdd() {
        return factoryAdd;
    }

    public void setFactoryAdd(String factoryAdd) {
        this.factoryAdd = factoryAdd;
    }
}
