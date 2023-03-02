# rlanta-terzi
### @onLife Mülakatı için QBUS alt yapısı ile hazırlanmış basit terzicilik sistemi.

Selamlar, rlanta-terzi config ağacı geniş olan (tamamen düzenlenebilir) bir terzi mesleğidir. İçerisinde satış entegrasyonu yoktur.
Açıklamanın devamında kurulum, ön izleme, gerekenler ve config tanıtılacaktır.


## Gereklilikler

[qb-core](https://github.com/qbcore-framework/qb-core)
[qb-target](https://github.com/qbcore-framework/qb-target)
[qb-menu](https://github.com/qbcore-framework/qb-menu)
[qb-inventory](https://github.com/qbcore-framework/qb-inventory) "Farklı envanter scriptleri kullanılabilir, fakat düzenleme getirebilir."


## Kurulum

* İlk olarak rlanta-terzi dosyasını resources dosyanızın içine atın.
* Sonrasında "items" klasörünün içinde bulunan "items.lua" dosyasında bulunan hazır itemleri qb-core/shared/items.lua dosyasına yapıştırın.
* "items" Klasörünün içinde bulunan "images" klasöründeki item iconlarını kendi envanter dosyanızın iconlarının bulunduğu klasöre atın.
* "rlanta-terzi" Klasörünün içinde bulunan config.lua dosyasından kişiselleştirmelerinizi yapın.
* !!! Unutmayın, config üzerinden item isimlerini değiştirdiğiniz zaman kendi core dosyanızda da değişikliğe gitmelisiniz.


## Ön İzleme

[Ön İzleme](https://streamable.com/dkksvz)
