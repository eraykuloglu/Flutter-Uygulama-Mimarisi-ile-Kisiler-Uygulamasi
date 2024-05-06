import 'package:kisiler_uygulamasi/data/entity/kisiler.dart';

class KisilerDaoRepository{
   Future <void> kaydet(String kisi_ad,String kisi_tel)async {
    print("Kişi Kaydet:$kisi_ad - $kisi_tel");
  }

  Future <void> guncelle(int kisi_id,String kisi_ad,String kisi_tel)async{
    print("Kişi Güncelle: $kisi_id- $kisi_ad - $kisi_tel");
  }

  Future <void> sil(int kisi_id)async{
    print("Kişi sil:${kisi_id}");
  }


  Future<List<Kisiler>> kisileriYukle()async{
    var kisilerListesi=<Kisiler>[];
    var k1=Kisiler(kisi_id: 1, kisi_ad: "Eray", kisi_tel: "111");
    var k2=Kisiler(kisi_id: 2, kisi_ad: "Ayşenur", kisi_tel: "222");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    return kisilerListesi;
  }

  Future<List<Kisiler>>ara(String aramaKelimesi)async{
    var kisilerListesi=<Kisiler>[];
    var k1=Kisiler(kisi_id: 1, kisi_ad: "Eray", kisi_tel: "111");
    kisilerListesi.add(k1);
    
    return kisilerListesi;
  }



}