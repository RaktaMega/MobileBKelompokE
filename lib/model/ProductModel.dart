
class ProductModel {
  String image, title, harga, content;

  ProductModel({this.image, this.title, this.harga, this.content});

  String setImage(String s) {
    return image = s;
  }

  String setTitle(String s) {
    return title = s;
  }

  String setHarga(String s) {
    return harga = s;
  }

  String setContent(String s) {
    return content = s;
  }
}

List<ProductModel> getList() {
  List<ProductModel> list = new List<ProductModel>();
  ProductModel listss = new ProductModel();

  //0
  listss.setImage("assets/images/tas.jpg");
  listss.setTitle("Tas Daur Ulang");
  listss.setHarga("Rp.10.000,-");
  listss.setContent("Content One Content One Content One Content One Content One Content One");
  list.add(listss);

  //1
  listss = new ProductModel();
  listss.setImage("assets/images/topi.png");
  listss.setTitle("Topi Kardus");
  listss.setHarga("Rp.10.000,-");
  listss.setContent("Content Two Content Two Content Two Content Two Content Two Content Two");
  list.add(listss);

  //2
  listss = new ProductModel();
  listss.setImage("assets/images/sepatu.png");
  listss.setTitle("Sepatu Plastik");
  listss.setHarga("Rp.10.000,-");
  listss.setContent("Content Three Content Three Content Three Content Three Content Three Content Three");
  list.add(listss);

  //kalau manu tambah product
  // //2
  // listss = new ProductModel();
  // listss.setImage("assets/images/icon.png");
  // listss.setTitle("Title Three");
  // listss.setHarga("Rp.10.000,-");
  // listss.setContent("Content Three Content Three Content Three Content Three Content Three Content Three");
  // list.add(listss);
  // //2
  // listss = new ProductModel();
  // listss.setImage("assets/images/icon.png");
  // listss.setTitle("Title Three");
  // listss.setHarga("Rp.10.000,-");
  // listss.setContent("Content Three Content Three Content Three Content Three Content Three Content Three");
  // list.add(listss);

  
  return list;
}
