## Sürücüyü Ayıklama ve Kurma


- Packages\Drivers\Display\XXXX_INF klasörünü masaüstüne taşıyın (diğer sürücü sürümlerinde klasör farklı adlar taşıyabilir). Sadece aşağıdakiler dışındaki her şeyi silin:  [AMD drivers and support page](https://www.amd.com/en/support)

- Bilgisayar programlarında veya işletim sistemlerinde bir dosyayı veya klasörü bir yerden başka bir yere taşıma işlemi anlamına gelir. Bu işlem, dosyanın veya klasörün orijinal konumunda silinmeden, yeni hedef konumda yer almasını sağlar. Taşınan dosya veya klasör, kaynak konumdan silindiğinde değil, hedef konuma başarıyla kopyalandığında kalır. Bu, dosyaları veya klasörleri düzenlemek, organize etmek veya farklı bir yerde kullanmak istediğinizde kullanışlı bir işlemdir. ``Packages\Drivers\Display\XXXX_INF`` Masaüstüne taşıyın (diğer sürücü sürümlerinde klasör farklı adlar taşıyabilir). Sadece aşağıdakiler dışındaki her şeyi silin:

- See [media/amd-driver-example.png](/media/amd-driver-example.png)

- Aygıt Yöneticisi'ni açın ve ekran adaptörüne sağ tıklayarak sürücüyü yükleyin, ardından "Sürücüyü Güncelle" seçeneğini seçin ve sürücü klasörünü belirtin.

- Sürücü dizinine gidin (benimki B381690) ve ccc2_install.exe dosyasını 7-Zip ile açın, ardından CN\cnext\cnext64\ccc-next64.msi'yi çalıştırarak Radeon yazılımı kontrol panelini kurun.

- Ensure to disable the unnecessary AMD services and drivers in [ServiWin](https://www.nirsoft.net/utils/serviwin.html). These are typically the ``AMD Crash Defender`` services and ``AMD External Events Utility`` (required for VRR)

## AMD Kontrol Paneli Ayarları

- Grafik bölümünde aşağıdakileri yapılandırın:

- Doku Filtreleme Kalitesi - Performans

- Tessellation Modu - Uygulama ayarlarını geçersiz kıl

- Maksimum Tessellation Düzeyi - Kapalı

- Ekran bölümünde aşağıdakileri yapılandırın:

- HDCP Desteği - Devre Dışı Bırak (DRM içeriği için gereklidir)

## GPU Clocks/P-State 0 Kilitli

## GPU Clocks /P-State 0 Nedir?

- Force P-State 0 with [MorePowerTool]" ifadesi, AMD grafik kartları için kullanılan bir yazılım olan MorePowerTool adlı bir programı ifade eder. Bu araç, kullanıcılara AMD grafik kartlarının enerji profillerini özelleştirmelerine ve belirli saat hızlarını veya performans seviyelerini ayarlamalarına olanak tanır.

- "P-State 0", grafik kartının minimum güç tüketimi ve saat hızı seviyesini temsil eder. Bu seviyeye zorlama, genellikle daha düşük güç tüketimi ve daha düşük sıcaklık sağlayarak enerji verimliliğini artırabilir, özellikle ekran kartını kullanırken gereksiz yere yüksek performans seviyelerinde çalışmayı önlemek için kullanışlıdır.

- MorePowerTool gibi araçlar, kullanıcıların grafik kartlarının performansını ve güç tüketimini özelleştirmelerine imkan verir, bu nedenle doğru kullanım ve ayarlamalar, kartınızın performansını ve verimliliğini artırabilir, ancak yanlış yapılan ayarlar kartınıza zarar verebilir. Bu tür araçları kullanmadan önce, ilgili dokümantasyonu dikkatlice okumak ve doğru ayarlamaları yapmak önemlidir.

- Force P-State 0 with [MorePowerTool](https://www.igorslab.de/en/red-bios-editor-and-morepowertool-adjust-and-optimize-your-vbios-and-even-more-stable-overclocking-navi-unlimited), [MoreClockTool](https://www.igorslab.de/en/the-moreclocktool-mct-for-free-download-the-practical-oc-attachment-to-the-morepowertool-replaces-the-wattman) or [OverdriveNTool](https://forums.guru3d.com/threads/overdriventool-tool-for-amd-gpus.416116)
