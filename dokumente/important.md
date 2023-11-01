## Ön Yükleme Talimatları
## Bölümleri Yapılandır

- Çalışma/bloatware ve gerçek zamanlı uygulamanız için ayrı ortamlar oluşturmak için çift önyükleme yapılandırın. Bu şekilde, bloatware'i gerçek zamanlı uygulamanızı kullanacağınız aynı bölümde yüklemek zorunda kalmazsınız. Bu işlemi, Disk Yönetimi'nde bir birimi daraltarak yapabilirsiniz, bu da yeni işletim sistemini yüklemek için ayrılmış bir alan oluşturacaktır.

- Hangi Windows Sürümünü Kullanmalısınız?

- Genel olarak, gerçek zamanlı görevler için eski Windows sürümleri daha üstündür, çünkü her sürüm güncellemesinden sonra enerji verimliliği ve güvenlik endişesi artar. Bu nedenle, Windows 7 tercih edilen bir seçenektir ancak modern donanım için sürücü desteği eksiktir ve geliştiriciler eski işletim sistemlerini desteklemeyi giderek bırakmaktadır.

- Eski Windows sürümleri hile engellemeyi eksik (güvenlik güncellemeleri eksik olduğundan) ve sürücü desteğini (genellikle GPU, ağ arabirim denetleyicisi) eksik bıraktığından, bazı kullanıcılar yeni sürümleri kullanmak zorunda kalabilir. Aşağıdaki tabloya bakarak, Temmuz 2023 itibarıyla belirli bir GPU için sürücüleri yüklemek için gereken minimum Windows sürümünü görebilirsiniz.

GPU	Minimum Windows Sürümü
NVIDIA 10 serisi ve daha düşük	Hemen hemen tüm Windows sürümlerinde desteklenir
NVIDIA 16, 20 serisi	Win7, Win8, Win10 1709+
NVIDIA 30 serisi	Win7, Win10 1803+
NVIDIA 40 serisi	Win10 1803+
AMD	Yeni sürücülerin iddiasına göre 1709 gerekliymiş?

- Çalışma/bloatware ve gerçek zamanlı uygulamanız için ayrı ortamlar oluşturmak için çift önyükleme yapılandırın. Bu şekilde, bloatware'i gerçek zamanlı uygulamanızı kullanacağınız aynı bölümde yüklemek zorunda kalmazsınız. Bu işlemi, Disk Yönetimi'nde bir birimi daraltarak yapabilirsiniz, bu da yeni işletim sistemini yüklemek için ayrılmış bir alan oluşturacaktır.

- Hangi Windows Sürümünü Kullanmalısınız?
NVIDIA DCH sürücüleri Windows 10 1803 ve sonrasında desteklenmektedir.

- Windows 10 1709'da sadece medya oynatma sırasında, Multimedia Class Scheduler Service zamanlayıcı çözünürlüğünü 0.5ms'ye yükseltir. Aşağıdaki makalede açıklandığı gibi, bu çözünürlük birçok kişi için hassasiyet açısından alt optimaldir, bu yüzden bu Windows sürümünden kaçınılması uygun olacaktır.

- NVIDIA GPU'lar için Ray Tracing için Windows 10 1809 ve üstü gereklidir.

- Windows 10 1809+ üzerinde, uygulamaları geliştirmeyi kolaylaştırmak için Microsoft, sabit 10MHz'lik bir QueryPerformanceFrequency uyguladı, ancak birçok internet kullanıcısı daha kötü performans bildirdi.

Windows 10 1903+, multi CCX Ryzen CPU'lar için güncellenmiş bir zamanlayıcıya sahiptir.

- DirectStorage, Windows 10 1909+ gerektirir, ancak aynı zamanda "Windows 11'de çalışan oyunlar yeni depolama yığını optimizasyonlarından daha fazla fayda sağlar" şeklindeki makalede belirtildiği gibi.

- DirectStorage Uyumluluğu
Windows 10 2004+, Hardware Accelerated GPU Scheduling için gereklidir.

- Hardware Accelerated GPU Scheduling
Windows 11+, Intel 12. Nesil CPU'lar ve üstü için güncellenmiş bir zamanlayıcıya sahiptir, ancak bu davranış kolayca herhangi bir Windows sürümünde manuel olarak taklit edilebilir. Daha fazla bilgi için Per-CPU Zamanlama bölümüne bakın.

- Thread Director: Windows 11 En İyisi
Windows 10 2004+ civarında, Hardware: Independent Flip uygulaması iyileştirildi (kesin olmamakla birlikte), bu da Hardware: Legacy Flip'e göre daha iyi performansa yol açabilir.

- Daha fazla bilgi için Uygulamaları Yapılandırma bölümüne bakın.
Windows 10 2004+'de tek bir sürecin saat kesme frekansını etkileyen süreçlerin davranışı önemli ölçüde değişti ve Windows 11'de daha da geliştirildi, güç verimliliğini artırmak için ancak bunun sonucunda gerçek zamanlı uygulamaları bozar ve işletim sistemi genelinde inanılmaz derecede kesin olmayan zamanlamaya neden olur. Ancak, eski uygulama sunumu bir kayıt defteri girişi ile Windows 11+ ve Server 2022+ ile geri yüklenebilir. Bu nedenle, Windows 10 2004'ten sonra yayınlanan sürümlerden kaçınılması uygun olacaktır.

- Mayıs 2023 itibarıyla, Windows 11 arka plan raw input dinleyicilerinin mesaj hızını sınırlar.

- Yüksek Rapor Hızı Farelerle Azaltılmış Oyun Kesintisi

- Windows Server sürümlerinde, AllowTelemetry değeri 0 olarak ayarlanabilir.

- Yapı Gereksinimleri

- Arşivleme aracı - 7-Zip önerilir.

-Windows ADK - Yükleme Araçları'nı yükleyin.

## Stok ISO dosyalarını indir

- ISO'nun doğruluğunu ve bütünlüğünü kontrol etmek için hash değerlerini çapraz kontrol etmek önemlidir (UUP dump ile ISO oluşturulurken gerekli değildir). ISO'nun hash değerini almak için aşağıdaki komutu kullanabilirsiniz:

- Windows 7: en_windows_7_professional_with_sp1_x64_dvd_u_676939.iso`` (https://files.rg-adguard.net/file/11ad6502-c2aa-261c-8c3f-c81477b21dd2?lang=en-us)- Adguard hash değerleri

- Windows 8: en_windows_8_1_x64_dvd_2707217.iso (https://files.rg-adguard.net/file/406e60db-4275-7bf8-616f-56e88d9e0a4a?lang=en-us)
 
- Adguard hash değerleri

- Windows 10+: Mümkünse ISO'yu en son güncellemelerle almaya çalışın çünkü daha sonra istediğiniz güncellemeleri entegre edeceğiz. UUP dump ile oluşturulan ISO'lar genellikle en son güncellemelerle gelir, bu da uygundur.
  
- ISO'yu çıkarın ve bağlayın, aşağıdaki adımları izleyerek Hazırlık Ortamını Hazırla ve ISO'yu Bağla kısımlarına gidin.

- Yüklenmiş güncellemeleri görüntüle

- Eğer güncelleme listesinden memnunsanız, devam edebilir ve diğer adımlara geçebilirsiniz. Aksi takdirde, ISO'yu reddetmek için aşağıdaki komutla bağlamayı kaldırabilirsiniz

- ISO Sources:

    - [os.click](https://os.click)

    - [New Download Links](https://docs.google.com/spreadsheets/d/1zTF5uRJKfZ3ziLxAZHh47kF85ja34_OFB5C5bVSPumk)

    - [Adguard File List](https://files.rg-adguard.net)

    - [Microsoft Software Download Listing](https://ave9858.github.io/msdl)

    - [Fido](https://github.com/pbatard/Fido)

    - UUP dump

        <details>
        <summary>Instructions</summary>

        - İstediğiniz Windows sürümünü arayın ve en son özellik güncelleştirmesini indirin.

            <img src="/media/uupdump-search-image.png" width="750">

        - Choose the desired language and click next

            <img src="/media/uupdump-choose-language.png" width="750">

        - Uncheck all editions except the professional edition and click next

            <img src="/media/uupdump-choose-edition.png" width="750">

        - Copy the configuration below, ensure that ``Include updates`` is ticked and click ``Create download package``

            <img src="/media/uupdump-download-options.png" width="750">

        - Extract the downloaded package and run ``uup_download_windows.cmd``. The final ISO file will be created in the same directory as the script

        </details>

## Prepare the Build Environment

- Yönetici olarak CMD'yi açın ve pencereyi kapatmayın, çünkü oturum sona erdiğinde kaldırılacak geçici ortam değişkenlerini ayarlayacağız.

- ISO dosyasını istediğiniz bir dizine çıkarın ve bu dizini EXTRACTED_ISO değişkenine atayın. Aşağıdaki örnekte, C:\en_windows_7_professional_with_sp1_x64_dvd_u_676939 dizinini kullanıyorum:


- set "EXTRACTED_ISO=C:\en_windows_7_professional_with_sp1_x64_dvd_u_676939"
ISO'nun hizmet verileceği dizini belirleyin ve bu değeri MOUNT_DIR değişkenine atayın. Aşağıdaki değeri değiştirmek gerekli değildir:

- set "MOUNT_DIR=%temp%\MOUNT_DIR"

- oscdimg.exe binary dosyasının yolunu belirleyin ve bu değeri OSCDIMG değişkenine atayın. Bu değeri değiştirmek gerekli değildir, çünkü dağıtım araçlarını varsayılan konum dışında bir yere kurmadıysanız:

- set "OSCDIMG=C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\Oscdimg\oscdimg.exe"
MOUNT_DIR dizinini bağlamak için hazırlığı yapın:

> nul 2>&1 (DISM /Unmount-Wim /MountDir:"%MOUNT_DIR%" /Discard & rd /s /q "%MOUNT_DIR%" & mkdir "%MOUNT_DIR%")
Eğer ortam değişkenleri doğru bir şekilde yapılandırıldıysa, aşağıdaki komutlar true değerini döndürmelidir:

- İstenmeyen sürümleri hariç tutmak için her sürümün dizinlerini alın ve aşağıdaki komutlarla istenmeyen sürümleri kaldırın. İşlem tamamlandığında, sadece istenilen sürümün endeksi 1'de kalması gerekmektedir.

# # Tavsiye edilen sürümler:

- Müşteri sürümleri: Professional

- Sunucu sürümleri: Standart (Masaüstü Deneyimi)

- Mevcut tüm sürümleri ve karşılık gelen endeksleri alın:

- DISM /Get-WimInfo /WimFile:"%EXTRACTED_ISO%\sources\install.wim"
Endeks numarasıyla sürümü kaldırın. <index> ifadesini endeks numarasıyla değiştirin:

- DISM /Delete-Image /ImageFile:"%EXTRACTED_ISO%\sources\install.wim" /Index:

## ISO'yu Bağla

- Aşağıdaki komutla ISO'yu bağlayın.

```bat
DISM /Mount-Wim /WimFile:"%EXTRACTED_ISO%\sources\install.wim" /Index:1 /MountDir:"%MOUNT_DIR%"
```
## Sürücüleri Bütünleştirme ve Edinme (Windows 7)

Bu adım, Windows 7'yi yapılandıran kullanıcılar için gereklidir, böylece genellikle yalnızca [NVMe](https://winraid.level1techs.com/t/recommended-ahci-raid-and-nvme-drivers/28310) and [USB](https://winraid.level1techs.com/t/usb-3-0-3-1-drivers-original-and-modded/30871) başlamamıza olanak tanır. Eğer HWID'niz için bir USB sürücüsü bulamıyorsanız, [generic USB driver](https://forums.mydigitallife.net/threads/usb-3-xhci-driver-stack-for-windows-7.81934). entegre etmeyi deneyin. Bu sürücüyü kullanıyorsanız, KB2864202 güncellemesini ISO içine entegre ettiğinizden emin olun.

Sürücülerinizi, cihazınızın HWID'si ile uyumlu olan sürücüleri arayarak bulabilirsiniz. Cihazınızdaki belirli bir cihaz için HWID'nizi Nasıl Bulacağınızı anlamak için [media/device-hwid-example.png](/media/device-hwid-example.png) adresine göz atın.

Uygun sürücüleri edindikten sonra, entegre edilecek tüm sürücüleri C:\drivers gibi bir klasöre yerleştirin ve bunları bağlanmış ISO'ya entegre etmek için aşağıdaki komutu kullanın.

```bat
DISM /Image:"%MOUNT_DIR%" /Add-Driver /Driver:"C:\drivers" /Recurse /ForceUnsigned
```

## Güncellemeleri Entegre Et

- Windows 7 Tavsiye Edilen Güncellemeler:

    ```
KB4490628 - Hizmet Yığını Güncellemesi
KB4474419 - SHA-2 Kod İmzalama Güncellemesi
KB2670838 - Platform Güncellemesi ve DirectX 11.1
KB2990941 - NVMe Desteği (https://files.soupcan.tech/KB2990941-NVMe-Hotfix/Windows6.1-KB2990941-x64.msu)
KB3087873 - NVMe Desteği ve Dil Paketi Düzeltmesi
KB2864202 - KMDF Güncellemesi (USB 3/XHCI sürücü yığını için gereklidir)
KB4534314 - Easy Anti-Cheat Desteği

    ```

- Windows 8 Tavsiye Edilen Güncellemeler:
    ```

KB4490628 - Hizmet Yığını Güncellemesi
KB4474419 - SHA-2 Kod İmzalama Güncellemesi
KB2670838 - Platform Güncellemesi ve DirectX 11.1
KB2990941 - NVMe Desteği (https://files.soupcan.tech/KB2990941-NVMe-Hotfix/Windows6.1-KB2990941-x64.msu)
KB3087873 - NVMe Desteği ve Dil Paketi Düzeltmesi
KB2864202 - KMDF Güncellemesi (USB 3/XHCI sürücü yığını için gereklidir)
KB4534314 - Easy Anti-Cheat Desteği

    ```

- Windows 10+ Tavsiye Edilen Güncellemeler:

- UUP dump ile oluşturulan ISO dosyaları genellikle en son güncellemeleri içerir (en son sürüm oluşturulduysa), bu nedenle bu adımı (güncellemeleri entegre etme) atlayabilirsiniz.

- Belirli bir güncelleme için en son güncelleme ve hizmet yığını ile birlikte güncellemeyi indirin, bu bilgiler güncelleme sayfasında belirtilmiştir. Resmi güncelleme geçmişi sayfasını kullanın (Windows 10, Windows 11). Windows Server güncelleme geçmişini manuel olarak arayın.

- Güncellemeleri Microsoft Güncelleme Kataloğu üzerinden KB kimliğini aratarak indirin. Doğru sürümle (sunucu/müşteri) ve mimariyle uyumlu doğru varyantı indirdiğinizden emin olun.

- Güncellemeleri aşağıdaki komutla bağlanmış ISO'ya entegre edin. Kumulatif güncellemeleri yüklemeye başlamadan önce hizmet yığını yüklenmiş olmalıdır:
    ```bat
 DISM /Image:"%MOUNT_DIR%" /Add-Package /PackagePath=<güncelleme\yol\adı>
    ```

## .NET 3.5'i Etkinleştir (Windows 8+)


```bat
DISM /Image:"%MOUNT_DIR%" /Enable-Feature /FeatureName:NetFx3 /All /LimitAccess /Source:"%EXTRACTED_ISO%\sources\sxs"
```

## Eski Uygulamalar İçin Eski Bileşenleri Etkinleştir (Windows 8+)

```
DISM /Image:"%MOUNT_DIR%" /Enable-Feature /FeatureName:DirectPlay /All
```

Gerekli Dosyaları Entegre Etme
Depoyu klonlayın ve bin klasörünü ile win-debloat.sh betiğini bağlanmış dizine yerleştirin. Dizini aşağıdaki komutla açın.

explorer "%MOUNT_DIR%"
Bağlamayı Kaldır ve Onayla
ISO'ya yaptığımız değişiklikleri onaylamak için aşağıdaki komutu çalıştırın. Eğer bir hata alırsanız, ISO'nun kaldırıldığından emin olmak için dizinin boş olduğunu kontrol edin, bunu yapmak için explorer "%MOUNT_DIR%" komutunu kullanın. Eğer boşsa, muhtemelen hatayı görmezden gelebilirsiniz, aksi takdirde tüm açık klasörleri kapatıp komutu tekrar çalıştırmayı deneyin.

DISM /Unmount-Wim /MountDir:"%MOUNT_DIR%" /Commit && rd /s /q "%MOUNT_DIR%"
Windows 7 Boot Wim Dosyasını Değiştir (Windows 7)
Bu adım, DISM Apply-Image kullanarak yüklüyorsanız (USB depolama cihazı olmadan) gereksiz değildir. Bildiğiniz gibi, Windows 7 modern donanım için sürücü desteğine sahip değil, ve install.wim dosyasına zaten sürücüleri entegre etmiş olmalısınız. Ancak, henüz boot.wim (kurulumcu) dosyasına dokunmadık. Daha önce yaptığımız gibi, aynı sürücüleri boot.wim dosyasına entegre edebiliriz. Ancak, bu hala sorunlu bir kurulumla sonuçlanabilir. Bunun yerine, Windows 7 install.wim dosyasını yüklemek için modern donanım desteğine sahip olan Windows 10 boot.wim dosyasını kullanabiliriz. Bu düzgün çalışabilmesi için install.wim dosyanızda yalnızca bir Windows 7 sürümünüz olmalı ve bu işlemi zaten Gereksiz Sürümleri Kaldırma bölümünde yapmış olmalısınız.

Windows 10 ISO'su indirin ve dilinize uygun olanı seçin, ardından ISO'yu çıkarın. Karışıklığı önlemek için çıkarılan klasöre yeniden ad vermeniz önerilir. Aşağıdaki örneklerde, ben ona C:\Win10_ISO olarak ad verdim.

Windows 7 install.wim dosyasını çıkarılan Windows 10 ISO içindeki sources\install.wim veya sources\install.esd dosyası ile değiştirin.

Çıkarılan dizinin değiştiği bir değişkeni güncellememiz gerekiyor. Yeni çıkarılan dizinin yolunu girin, benimki C:\Win10_ISO.


set "EXTRACTED_ISO=C:\Win10_ISO"
ISO Sıkıştırma
Sıkıştırmanın boyutu azaltma dışında bir avantajı yoktur. Unutmayın ki Windows kurulumu, ISO'nun kurulum sırasında açılmasını gerektirir, bu da zaman alır. ISO'yu sıkıştırmak için aşağıdaki komutu kullanın.


DISM /Export-Image /SourceImageFile:"%EXTRACTED_ISO%\sources\install.wim" /SourceIndex:1 /DestinationImageFile:"%EXTRACTED_ISO%\sources\install.esd" /Compress:recovery /CheckIntegrity && del /f /q "%EXTRACTED_ISO%\sources\install.wim"
ISO'ya Dönüştürme
Bu adım, DISM Apply-Image kullanarak yüklüyorsanız (USB depolama cihazı olmadan) gerekli değildir. Çıkarılan içerikleri tek bir ISO'ya paketlemek için aşağıdaki komutu kullanın, bu ISO masaüstünde oluşturulur.


"%OSCDIMG%" -m -o -u2 -udfver102 -l"Final" -bootdata:2#p0,e,b"%EXTRACTED_ISO%\boot\etfsboot.com"#pEF,e,b"%EXTRACTED_ISO%\efi\microsoft\boot\efisys.bin" "%EXTRACTED_ISO%" "%userprofile%\Desktop\Final.iso"
USB'yi Hazırlama
Ventoy'u indirin ve Ventoy2Disk.exe'yi başlatın. Seçenek menüsüne gidin ve doğru bölüm stili ve BIOS'ta etkin değilse güvenli önyükleme desteğini devre dışı bırakın, ardından USB depolama cihazınızı seçin ve yüklemeye başlamak için tıklayın.

media/identify-bios-mode.png görüntüsüne bakın.
Seçtiğiniz canlı Linux dağıtımını indirin ve ISO'yu USB depolama cihazına Dosya Gezgini'nde taşıyın. Linux Mint Xfce Sürümü'nü kullanacağım.

Removing Bloatware with Linux adımında çevrimdışı olarak bloatware'leri kaldırmak için Linux gerekli olacaktır. Talimatlar, başka bir çözüm için izin verilen izin hataları nedeniyle bootable Linux'a gerek olmadan başka araçlar kullanmak üzere yorumlanabilir, ancak benim deneyimlerime göre, en az adımla aynı hedefi elde etmek için bu yöntemin en iyi yol olduğunu buldum, çünkü TrustedInstaller ile izin hataları ve işlemler çekirdekte açık durumda.
ISO'ya Önyükleme
Bundan sonraki adımlarda, Ethernet kablosunu çıkarmanız ve internete bağlı olmamanız gerekmektedir. Bu, zorunlu Microsoft oturumu sırasında geçirilmeye çalışılan ve istenmeyen güncelleme ve sürücülerin yüklenmesini engelleyeceğimiz anlamına gelir.

Unutmayın, ağ arayüzü denetleyicinizin sürücüsü Windows ile paketlenmiş olmayabilir, bu yüzden bunları şimdi indirin ve bunları USB üzerinde çevrimdışı olarak saklayın veya bunları başka bir cihazdan indirme veya çift önyükleme yapma konusunda hazırlıklı olun.

USB depolama cihazını kullanarak yükleme
Windows ISO'nuzu Dosya Gezgini'nde USB depolama cihazına taşıyın (Linux ISO'nun da bulunduğu yer)

USB'nizde Ventoy'a BIOS'ta önyükleme yaparak başlayın ve Windows ISO'nuzu seçin. Kurulumu normal şekilde devam ettirin

USB ile Windows 8 yüklüyorsanız, bir anahtar girmeniz istenebilir. Bu adımı atlamak için generic anahtar olan GCRJD-8NW9H-F2CDX-CCM8D-9D6T9 kullanabilirsiniz (bu Windows'u etkinleştirmez)

USB ile Win11 yüklerken, sistem gereksinimleri sorunlarıyla karşılaşabilirsiniz. Kontrolleri atlamak için Shift+F10 tuşlarına basarak CMD'yi açın, ardından regedit yazın ve aşağıda listelenen ilgili kayıt defteri anahtarlarını ekleyin

[HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig]
"BypassTPMCheck"=dword:00000001
"BypassRAMCheck"=dword:00000001
"BypassSecureBootCheck"=dword:00000001
DISM Apply-Image kullanarak yükleme (USB depolama cihazı olmadan)
Daha önce yapmadıysanız, birim daraltarak yeni bir bölüm oluşturun, ardından oluşturulan ayırmalı alanı bir sürücü harfiyle atan.

Gerekirse ISO'yu çıkarın, ardından aşağıdaki komutu çalıştırarak görüntüyü uygulamak için komutu çalıştırın. <path\to\wim>'i install.wim veya install.esd dosyasının yoluna değiştirin.

Mevcut tüm sürümleri ve karşılık gelen endeksleri alın


DISM /Get-WimInfo /WimFile:<path\to\wim>
Görüntüyü uygula. <index>'i istediğiniz sürümün endeks numarasıyla ve <drive letter>'ı önceki adımda ayırdığınız sürücü harfiyle değiştirin (örneğin, 1 ve D:)


DISM /Apply-Image /ImageFile:<path\to\wim> /Index:<index> /ApplyDir:<drive letter>
Aşağıdaki komutla önyükleme girişini oluşturun. <windir>'i (örneğin D:\Windows) monte edilecek olan görüntünün Windows dizini yoluna değiştirin.


bcdboot <windir>
docs/post-install.md adresine devam edin.