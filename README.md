## PHP DEVELOPER CHALANGE

Görevin Amacı:

iOS ya da Google mobile applicationlar bu API'yı kullanarak uygulama içi satınalma / doğrulama ve mevcut abonelik kontrollü yapabileceklerdir.

Teknolojiler ve Kullanılan Araçlar:


- PHP, MySQL.
- Framework Laravel 11.
- Validation
- Event
- Listener
- Observe
- Passport
- Command

Paylaşılanlar:
- Kaynak Kodlar
- MySQL Tablosu [ app/api.sql ]



### Register 
Method: POST<br>URL: api/register<br>
uid, appId, lang ve os zorunlu alanlardır. Cihaz ilk defa açıldığında Register olmktadır.<br>
- <b><i>os veri tipi ENUM [ 'iOS', 'Android' ] şelkindedir.</i></b>

appID listesinin ilk 5 tanesini aşağıda bulabilirsiniz.

| id | platform | app_name                        |
|----|----------|---------------------------------|
| 1  | Android  | Muller, Dicki and Green         |
| 2  | Android  | Nader and Sons                  |
| 3  | Android  | Huel, Wisozk and Fay            |
| 4  | Android  | Harvey, Bednar and Maggio       |
| 5  | iOS      | Goodwin-O'Kon                   |


Cihaz ilk defa Register oluyor ise

Request:
```json
{
    "uid": "cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984",
    "appId": "1",
    "lang": "TR",
    "os": "Android"
}
````
Response:
```json
{
    "success": true,
    "message": "Device Registered",
    "access_token": "1|xXK09A2X3tv2rjsbHkkLXmb8exLzJxTiXzpEaYnO93266004",
    "device": {
        "uid": "cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984",
        "appId": "1",
        "lang": "TR",
        "os": "Android",
        "client_token": "52a18d6c926d60bd59bd7f14694af42b"
    }
}
````

Eğer İkinci defa kayıt oluyor ise Response handle edilerek aşağıdaki sonucu döndürür:
```json
{
    "success": true,
    "message": "Device already registered.",
    "device": {
        "uid": "cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984",
        "client_token": "52a18d6c926d60bd59bd7f14694af42b",
        "appId": "1",
        "lang": "TR",
        "os": "Android"
    }
}
````
Eğer Cihaz aynı fakat appID si farklı ise aşağıdaki sonucu döndürür:
```json
{
    "success": true,
    "message": "AppID updated for the device with the same uid.",
    "device": {
        "uid": "cfbd5f6f-3f7c-4a8e-bb15-2be307e92f984",
        "client_token": "52a18d6c926d60bd59bd7f14694af42b",
        "appId": "2",
        "lang": "TR",
        "os": "Android"
    }
}
````


### Purchase
Method: POST<br>URL: api/purchase<br>
client_token ve receipt zorunlu alanlardır. <br>API’mız bu gelen parametrelerdeki receipt hash’i ile iOS ya da Google’a doğrulama isteği atmaktadır. son karakteri tek bir sayı ise OK cevabı vermektedir. <br>


Request
```json
{
    "client_token": "52a18d6c926d60bd59bd7f14694af42b",
    "receipt": "a9dfc79b8"
}
````
Response

```json
{
    "status": false,
    "expire-date": "2024-05-01 14:15:20",
    "app": {
        "app_name": "Nader and Sons",
        "end_point": "https://www.gorczany.info/at-doloremque-beatae-incidunt-est-in-non-omnis",
        "platform": "Android"
    }
}
````
Eğer sonuç false dönerse purchases tabosuna false olarak kayıt eder fakat subscriptions tablosuna kayıt etmeyecektir. 

Eğer sonuç true dönecek olursa purchases ve subscriptions tablolarına kayıt eder ve abonelik started olarak başlar. 

Aynı ürün tekrar tekrar satın alınmak istenirse mevcut aboneliğinin üzerine +1 ay ekleyerek. durumunu renewed olarka günceller. 

### Check Subscription
Method: POST<br>URL: api/check-subscription<br>client_token zorunlu alandır<br> 

Response
```json
[
    {
        "application": {
            "app_name": "Nader and Sons",
            "platform": "Android"
        },
        "status": "started",
        "expire_date": "2024-05-01 14:15:44"
    }
]
```


## Açıklamalar 
- Mock yapımı için kolaylık sağlamak amacıyla, servis içerisinde basit bir tanımlama yapıldı. Genellikle bu işlem için aynı uygulama içerisinde bir HTTP isteği gönderilecek şekilde düzenleme yapılır. 
- Abonelik durumundaki değişiklikleri izlemek için, olaylar (event) ve dinleyiciler (listener) oluşturuldu. Bu sayede abonelik durumundaki herhangi bir değişiklikte sistem otomatik olarak haberdar olabilecek ve gerekli işlemleri yapabilecektir. 
- Aboneliklerin son kullanma tarihlerini kontrol etmek için app:check-expired komutu oluşturuldu. Bu komut sayesinde, son kullanma tarihi geçmiş abonelikler tespit edilecek ve gerekli işlemler uygulanacak.
- Performansı artırmak için indexleme yapılabilir sadece örnek olması açısından tek bir tablo da yaptım.

