## NVIDIA Sürücüsünü Yapılandırma

## Sürücüyü Ayıklama ve Kurma

- [Gelişmiş sürücü aramasını] kullanarak en son oyuna hazır (güvenlik güncellemesi olmayan) sürücüyü indirin (https://www.nvidia.com/download/find.aspx) sayfa. DCH sürücüleri [Windows 10 1803+ üzerinde desteklenir](https://nvidia.custhelp.com/app/answers/detail/a_id/4777/~/nvidia-dch%2Fstandard-display-drivers-for-windows-10-faq).

- Sürücüyü 7-Zip ile Çıkarın ve Gerekli Dosyaları Bırakın:

- Sürücü paketini 7-Zip ile açın.

- Aşağıdaki dosya ve klasörleri haricen kaldırın:

  ```
Display.Driver
NVI2
EULA.txt
ListDevices.txt
setup.cfg
setup.exe
    ```

- ```setup.cfg ``` Dosyasından Aşağıdaki Satırları Kaldırın

    ```
<file name="${{EulaHtmlFile}}"/>
<file name="${{FunctionalConsentFile}}"/>
<file name="${{PrivacyPolicyFile}}"/>
    ```

- ``` NVI2\presentations.cfg ``` Dosyasında Değişiklik Yapın

    ```
<string name="ProgressPresentationUrl" value=""/>
<string name="ProgressPresentationSelectedPackageUrl" value=""/>
    ```

- Sürücüyü Kurmak İçin setup.exe Dosyasını Çalıştırın

- CMD'yi Açın ve Telemetriyi Devre Dışı Bırakmak İçin Aşağıdaki Komutları Girin

    ```bat
    reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f
    ```

    ```bat
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup" /v "SendTelemetryData" /t REG_DWORD /d "0" /f
    ```

## HDCP'yi Devre Dışı Bırakma (DRM içeriği için gereklidir)

HDCP, DRM içeriği (Telif Hakkı Koruması) için gereklidir ve aşağıdaki [ kayıt defteri anahtarı ile ](https://github.com/djdallmann/GamingPCSetup/blob/master/CONTENT/RESEARCH/WINDRIVERS/README.md#q-are-there-any-configuration-options-that-allow-you-to-disable-hdcp-when-using-nvidia-based-graphics-cards) (yeniden başlatma gerektirir). Sürücü anahtarını doğru NVIDIA GPU'ya karşılık gelen anahtarla değiştirmeyi unutmayın.

    - See [media/find-driver-key-example.png](/media/find-driver-key-example.png) Aygıt Yöneticisi'nde doğru sürücü anahtarını almak için

## Aygıt yöneticisi'nin doğru sürücü anahtarı nedir?

- Aygıt Yöneticisi'ni Açın: Başlat menüsüne sağ tıklayın ve "Aygıt Yöneticisi" seçeneğini tıklayarak Aygıt Yöneticisi'ni açın.

- Grafik Kartları Bölümüne Gidin: Aygıt Yöneticisi'nde, "Ekran kartları" veya "Grafik kartları" başlığı altında NVIDIA GPU'nuzu bulun ve sağ tıklayın.

- Özelliklere Tıklayın: Sağ tıkladıktan sonra açılan menüden "Özellikler"i seçin.

- Sürücü Sekmesine Geçin: Açılan pencerede, "Sürücü" sekmesine tıklayın.

- Sürücü Kimliği Bilgilerini Bulun: "Sürücü Kimliği" veya "Donanım Kimliği" gibi bir bölümde, sürücü anahtarınızı içeren bilgileri göreceksiniz. Bu bilgiler genellikle "VEN_" (Vendor) ve "DEV_" (Device) şeklinde başlayan kodları içerir.

    ```bat
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
    ```

## NVIDIA Kontrol Paneli Ayarları

- 3D Ayarları Yönetimi sayfasında aşağıdakileri yapılandırın:

- Anizotropik filtreleme - Kapalı

- Kenar yumuşatma (Antialiasing) - Gama düzeltme - Kapalı

- Düşük Gecikme Modu - Açık/Ultra (low latency)

> [Bir oyun NVIDIA Reflex Düşük Gecikme modunu destekliyorsa, sürücüdeki Ultra Düşük Gecikme modu yerine bu modu kullanmanızı öneririz. Ancak, her ikisini de açık bırakırsanız, Reflex Düşük Gecikme modu otomatik olarak sizin için daha yüksek öncelik alacaktır.] (https://www.nvidia.com/en-gb/geforce/news/reflex-low-latency-platform)

- Güç yönetimi modu - Maksimum performansı tercih et

- Shader Cache Boyutu - Sınırsız

- Doku filtreleme - Kalite - Yüksek performans

- Dikey Senkronizasyon - Kapalı (Gerektiğinde açılabilir, ancak eğer ekran kartınız ve monitörünüz arasında senkronizasyon sorunları yaşıyorsanız açmanız önerilir)

- Konu tabanlı Optimizasyon - [offloads GPU-related processing tasks on the CPU](https://tweakguides.pcgamingwiki.com/NVFORCE_8.html). zamanlamasını olumsuz etkiler, çünkü gerçek zamanlı uygulamanızdan CPU zamanını alır. Bu ayarı etkinleştirmeye karar verirken CPU'nuzun zaten yeterli olup olmadığını da değerlendirmelisiniz.

 - Image Sharpening gibi bazı EAC oyunları için ayarların geçersiz kılınmadığından emin olun.

- "Çözünürlüğü Değiştir" sayfasında aşağıdaki ayarları yapılandırın

- Çıkış dinamik aralığı - Tam

- "Video Renk Ayarlarını Ayarla" sayfasında aşağıdaki ayarları yapılandırın

- Dinamik aralık - Tam

## GPU Saat Hızlarını ve P-State 0'ı Sabitleme

- PU saat hızlarını ve P-State 0'ı sabitleme, grafik işlemcisinin en düşük güç tüketiminde çalıştığı durumu ifade eder. Bu, enerji verimliliğini artırabilir ve gereksiz yere yüksek performans seviyelerinde çalışmayı önleyebilir. Bu ayarları değiştirmek için genellikle özel yazılımlar veya sürücü ayarları kullanılır. Bu ayarlar, ekran kartının performansını daha sabit ve istikrarlı bir şekilde tutmak isteyen kullanıcılar için önemli olabilir.

    ```bat
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f
    ```

## NVIDIA Inspector Ayarları Yapma

- NVIDIA Inspector, NVIDIA grafik kartları için özel ayarların yapıldığı bir araçtır. Aşağıda NVIDIA Inspector'da yapılandırabileceğiniz bazı ayarları bulabilirsiniz:

- Driver Version: Kullandığınız NVIDIA sürücüsünün versiyonunu gösterir.

- GPU Clock: Grafik işlemcinin saat hızını gösterir.

- Memory Clock: Grafik kartının bellek saat hızını gösterir.

- Temperature Target: Grafik kartının maksimum sıcaklık değerini ayarlar.

- Fan Speed: Soğutucu fanın hızını ayarlar.

- Voltage: Grafik kartının çalışma voltajını ayarlar.

- Power Limit: Grafik kartının enerji tüketimini sınırlar.

- Core Clock: Grafik işlemcinin temel saat hızını ayarlar.

- Memory Clock: Grafik kartının bellek saat hızını ayarlar.

- Shader Clock: Grafik kartının shader (gölgeleme) saat hızını ayarlar.

- Fan Profile: Fan hızını belirli sıcaklık değerlerine göre otomatik olarak ayarlar.

- Antialiasing Settings: Kenar yumuşatma (antialiasing) ayarlarını yapılandırır.

- Texture Filtering: Doku filtreleme ayarlarını düzenler.

- Vertical Sync: Dikey senkronizasyonu ayarlar, ekranın tazeleme hızı ile grafik kartının ürettiği kare hızını senkronize eder.

- Multi-Display/Mixed-GPU Acceleration: Birden fazla ekran kartını veya monitörü yönetme ayarlarını yapılandırır.

- Multi-Frame Sampled AA (MFAA): MFAA özelliğini yapılandırır, MFAA'nın etkinleştirilmesi ile antialiasing performansını artırabilir.

- G-SYNC: G-SYNC teknolojisini yapılandırır, ekran kartı ile monitör arasında senkronizasyon sağlayarak ekran yırtılmalarını önler.

- Overclocking: Grafik kartını aşırı hızlandırma (overclocking) ayarlarını düzenler.

- Not: Bu ayarlar, NVIDIA Inspector'un sürümüne ve kullanılan NVIDIA grafik kartına bağlı olarak farklılık gösterebilir. Güncel program sürümü ve grafik kartınızın dokümantasyonunu kontrol etmeniz önerilir.

- Disable ``Enable Ansel`` as [it is injected in all games by the display drivers, regardless if the game supports Ansel or not](https://www.pcgamingwiki.com/wiki/Nvidia#Ansel) which may cause conflicts with third-party tools or injectors

- Uygulanabilirse, [potansiyel bir performans artışı] (https://www.youtube.com/watch?v=ZTOtqWTFSK8) için desteklenmeyen oyunlarda Yeniden Boyutlandırılabilir BAR'ı zorlamak için aşağıdaki seçenekleri açıp kapatmayı deneyebilirsiniz.

    - rBAR - Feature

    - rBAR - Options

    - rBAR - Size Limit

    - CUDA iş yükleri sırasında bellek saat frekansının P-State 2'ye girmesini önlemek için 2 [CUDA - Force P2 State ] [Lock GPU Clocks/P-State 0](#lock-gpu-clocksp-state-0) adımlarını izlemenize rağmen bellek saat hızını düşürdüğünde etkilidir.

    - See [media/CUDA-force-p2-state-analysis](/media/cuda-force-p2-state-analysis.png)
