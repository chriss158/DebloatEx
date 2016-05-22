.class public Lcom/android/nfc/cardemulation/LRegisteredServicesCache;
.super Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.source "LRegisteredServicesCache.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;
    }
.end annotation


# static fields
.field static final BANNER_IMAGE_POSTFIX:Ljava/lang/String; = ".banner"

.field static final DBG:Z

.field static final DEFAULT_IMAGE_PATH:Ljava/lang/String; = "data/data/com.android.nfc/files/"

.field static final MAX_FILE_SIZE:I = 0x4c4b40

.field static final PREF_DEFAULT_ROUTE:Ljava/lang/String; = "default_route"

.field static final TAG:Ljava/lang/String; = "LRegisteredServicesCache"


# instance fields
.field public final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field final mCallback:Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;

.field final mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

.field private mGsmaOffHostServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutingTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    .line 80
    iput-object p2, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;

    .line 81
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 84
    .local v0, "gsmaDataDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "gsma_dynamic_aids.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    .line 87
    return-void
.end method

.method private addServiceToRoutingTable(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 11
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 602
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_payment_default_component"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "componentString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 604
    .local v3, "defaultServiceComponentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_1e

    .line 605
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 606
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 607
    const/4 v2, 0x0

    .line 611
    :cond_1e
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    .line 613
    .local v1, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 628
    return-void

    .line 613
    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 614
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string v6, "payment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 615
    if-nez v2, :cond_63

    .line 616
    sget-boolean v5, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v6, "LRegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Default Payment Service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->resolveAidConflicts(Ljava/util/List;Z)V

    goto :goto_26

    .line 620
    :cond_63
    sget-boolean v5, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v6, "LRegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Non-Default Payment Service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 623
    :cond_7e
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v5

    const-string v6, "other"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 624
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->resolveAidConflicts(Ljava/util/List;Z)V

    goto :goto_26
.end method

.method private calculateAidLength(Ljava/lang/String;)I
    .registers 7
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x4

    .line 663
    .local v0, "aid_len":I
    sget-boolean v1, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v2, "LRegisteredServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", AID LEN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 664
    return v0
.end method

.method private clearRoutingTable()V
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 632
    return-void
.end method

.method private getBannerImages(Ljava/util/HashMap;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "bannerImages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const/4 v10, 0x1

    .line 505
    .local v10, "ret":Z
    const/4 v7, 0x0

    .line 506
    .local v7, "fis":Ljava/io/FileInputStream;
    if-nez p1, :cond_d

    .line 507
    const-string v12, "LRegisteredServicesCache"

    const-string v13, "getBannerImages - bannerImages is null"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v12, 0x0

    .line 546
    :goto_c
    return v12

    .line 512
    :cond_d
    :try_start_d
    new-instance v6, Ljava/io/File;

    const-string v12, "data/data/com.android.nfc/files/"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v6, "files":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_ad
    .catchall {:try_start_d .. :try_end_17} :catchall_c8

    move-result-object v5

    .line 514
    .local v5, "fileList":[Ljava/io/File;
    if-nez v5, :cond_2b

    .line 537
    if-eqz v7, :cond_1f

    .line 539
    :try_start_1c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 514
    :cond_1f
    :goto_1f
    const/4 v12, 0x0

    goto :goto_c

    .line 541
    :catch_21
    move-exception v12

    const-string v12, "LRegisteredServicesCache"

    const-string v13, "loadGsmaBannerImages - File Close Error"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v10, 0x0

    goto :goto_1f

    .line 516
    :cond_2b
    :try_start_2b
    array-length v13, v5
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2c} :catch_ad
    .catchall {:try_start_2b .. :try_end_2c} :catchall_c8

    const/4 v12, 0x0

    move-object v8, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :goto_2e
    if-lt v12, v13, :cond_38

    .line 537
    if-eqz v8, :cond_eb

    .line 539
    :try_start_32
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_d9

    move-object v7, v8

    .end local v5    # "fileList":[Ljava/io/File;
    .end local v6    # "files":Ljava/io/File;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_36
    :goto_36
    move v12, v10

    .line 546
    goto :goto_c

    .line 516
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fileList":[Ljava/io/File;
    .restart local v6    # "files":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_38
    :try_start_38
    aget-object v4, v5, v12

    .line 517
    .local v4, "file":Ljava/io/File;
    const-string v14, "LRegisteredServicesCache"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "loadGsmaBannerImages - check file: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".banner"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_ee

    .line 519
    sget-boolean v14, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v15, "LRegisteredServicesCache"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "loadGsmaBannerImages - get banner image from: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_77} :catch_e8
    .catchall {:try_start_38 .. :try_end_77} :catchall_e5

    .line 521
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :try_start_77
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v11, "strBuilder":Ljava/lang/StringBuilder;
    :goto_7c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .local v3, "ch":I
    const/4 v14, -0x1

    if-ne v3, v14, :cond_a8

    .line 527
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 528
    .local v2, "byteArrayBanner":[B
    const/4 v14, 0x0

    array-length v15, v2

    invoke-static {v2, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 529
    .local v1, "bannerImage":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\\."

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v9, v14, v15

    .line 530
    .local v9, "hash":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .end local v1    # "bannerImage":Landroid/graphics/Bitmap;
    .end local v2    # "byteArrayBanner":[B
    .end local v3    # "ch":I
    .end local v9    # "hash":Ljava/lang/String;
    .end local v11    # "strBuilder":Ljava/lang/StringBuilder;
    :goto_a4
    add-int/lit8 v12, v12, 0x1

    move-object v8, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_2e

    .line 524
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "ch":I
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_a8
    int-to-char v14, v3

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ac} :catch_ad
    .catchall {:try_start_77 .. :try_end_ac} :catchall_c8

    goto :goto_7c

    .line 534
    .end local v3    # "ch":I
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileList":[Ljava/io/File;
    .end local v6    # "files":Ljava/io/File;
    .end local v11    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_ad
    move-exception v12

    :goto_ae
    :try_start_ae
    const-string v12, "LRegisteredServicesCache"

    const-string v13, "loadGsmaBannerImages - cannot get banner image"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_c8

    .line 535
    const/4 v10, 0x0

    .line 537
    if-eqz v7, :cond_36

    .line 539
    :try_start_b8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bd

    goto/16 :goto_36

    .line 541
    :catch_bd
    move-exception v12

    const-string v12, "LRegisteredServicesCache"

    const-string v13, "loadGsmaBannerImages - File Close Error"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v10, 0x0

    goto/16 :goto_36

    .line 536
    :catchall_c8
    move-exception v12

    .line 537
    :goto_c9
    if-eqz v7, :cond_ce

    .line 539
    :try_start_cb
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 545
    :cond_ce
    :goto_ce
    throw v12

    .line 541
    :catch_cf
    move-exception v13

    const-string v13, "LRegisteredServicesCache"

    const-string v14, "loadGsmaBannerImages - File Close Error"

    invoke-static {v13, v14}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v10, 0x0

    goto :goto_ce

    .line 541
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fileList":[Ljava/io/File;
    .restart local v6    # "files":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_d9
    move-exception v12

    const-string v12, "LRegisteredServicesCache"

    const-string v13, "loadGsmaBannerImages - File Close Error"

    invoke-static {v12, v13}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v10, 0x0

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_36

    .line 536
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_e5
    move-exception v12

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_c9

    .line 534
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_e8
    move-exception v12

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_ae

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_eb
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_36

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :cond_ee
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_a4
.end method

.method private getRoutingTableSize(I)I
    .registers 6
    .param p1, "defaultPath"    # I

    .prologue
    .line 650
    const/4 v1, 0x0

    .line 652
    .local v1, "routingTableSize":I
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 658
    return v1

    .line 652
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 653
    .local v0, "aid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_b

    .line 654
    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->calculateAidLength(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_b
.end method

.method private loadGsmaBannerImages()Z
    .registers 10

    .prologue
    .line 363
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v1, "bannerImages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getBannerImages(Ljava/util/HashMap;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 365
    const/4 v4, 0x0

    .line 385
    :goto_c
    return v4

    .line 368
    :cond_d
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 385
    const/4 v4, 0x1

    goto :goto_c

    .line 368
    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 369
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-static {v3}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "hashCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_66

    .line 371
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 372
    .local v0, "banner":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_51

    .line 373
    sget-boolean v5, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v6, "LRegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loadGsmaBannerImages - sotre banner image for: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {v3, v0}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;Landroid/graphics/Bitmap;)Landroid/nfc/cardemulation/ApduServiceInfo;

    goto :goto_13

    .line 377
    :cond_51
    const-string v5, "LRegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadGsmaBannerImages - cannot get matched banner image: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 381
    .end local v0    # "banner":Landroid/graphics/Bitmap;
    :cond_66
    const-string v5, "LRegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "loadGsmaBannerImages - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t have hashCode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private refreshGsmaBannerImages()V
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v0, "bannerHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_21

    .line 402
    const/4 v3, 0x0

    .line 404
    .local v3, "fileName":Ljava/lang/String;
    :try_start_13
    new-instance v4, Ljava/io/File;

    const-string v9, "data/data/com.android.nfc/files/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v4, "files":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_8e

    move-result-object v2

    .line 406
    .local v2, "fileList":[Ljava/io/File;
    if-nez v2, :cond_54

    .line 421
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "files":Ljava/io/File;
    :cond_20
    :goto_20
    return-void

    .line 391
    :cond_21
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 392
    .local v7, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-static {v7}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "hashCode":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_50

    .line 394
    const-string v8, "LRegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "refreshGsmaBannerImages - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has no HashCode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 398
    :cond_50
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 407
    .end local v6    # "hashCode":Ljava/lang/String;
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v2    # "fileList":[Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "files":Ljava/io/File;
    :cond_54
    :try_start_54
    array-length v9, v2

    :goto_55
    if-ge v8, v9, :cond_20

    aget-object v1, v2, v8

    .line 408
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 409
    const-string v10, ".banner"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 410
    const-string v10, "\\."

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v5, v10, v11

    .line 411
    .local v5, "hash":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    .line 412
    const-string v10, "LRegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "refreshGsmaBannerImages - delete unlinked file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_8b} :catch_8e

    .line 407
    .end local v5    # "hash":Ljava/lang/String;
    :cond_8b
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    .line 418
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v4    # "files":Ljava/io/File;
    :catch_8e
    move-exception v8

    const-string v8, "LRegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "refreshGsmaBannerImages - cannot remove unrefered image: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20
.end method

.method private resolveAidConflicts(Ljava/util/List;Z)V
    .registers 9
    .param p2, "isOnHost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 635
    if-eqz p2, :cond_f

    move v1, v3

    .line 637
    .local v1, "route":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_12

    .line 647
    return-void

    .line 635
    .end local v1    # "route":I
    :cond_f
    const/16 v1, 0xf3

    goto :goto_4

    .line 637
    .restart local v1    # "route":I
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 638
    .local v0, "aid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 639
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_8

    .line 640
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 644
    :cond_38
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mRoutingTable:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private setDynamicAidGroupForCategory(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .registers 8
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 173
    if-nez p2, :cond_3

    .line 188
    :cond_2
    :goto_2
    return-void

    .line 177
    :cond_3
    invoke-virtual {p1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    .line 178
    .local v0, "aidGrp":Landroid/nfc/cardemulation/AidGroup;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 179
    .local v2, "userId":I
    if-eqz v0, :cond_19

    .line 180
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    goto :goto_2

    .line 183
    :cond_19
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 184
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 185
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private storeGsmaBannerImages()Z
    .registers 27

    .prologue
    .line 301
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v12, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_5
    new-instance v6, Ljava/io/File;

    const-string v21, "data/data/com.android.nfc/files/"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 306
    .local v10, "fileList":[Ljava/io/File;
    if-nez v10, :cond_17

    const/16 v21, 0x0

    .line 359
    .end local v6    # "dir":Ljava/io/File;
    .end local v10    # "fileList":[Ljava/io/File;
    :goto_16
    return v21

    .line 307
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v10    # "fileList":[Ljava/io/File;
    :cond_17
    array-length v0, v10

    move/from16 v22, v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_57

    const/16 v21, 0x0

    :goto_1c
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_35

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_62

    .line 359
    const/16 v21, 0x1

    goto :goto_16

    .line 307
    :cond_35
    :try_start_35
    aget-object v9, v10, v21

    .line 308
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 309
    .local v11, "fileName":Ljava/lang/String;
    const-string v23, ".banner"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_54

    .line 310
    const-string v23, "\\."

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v14, v23, v24

    .line 311
    .local v14, "hash":Ljava/lang/String;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_54} :catch_57

    .line 307
    .end local v14    # "hash":Ljava/lang/String;
    :cond_54
    add-int/lit8 v21, v21, 0x1

    goto :goto_1c

    .line 315
    .end local v6    # "dir":Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileList":[Ljava/io/File;
    .end local v11    # "fileName":Ljava/lang/String;
    :catch_57
    move-exception v21

    const-string v21, "LRegisteredServicesCache"

    const-string v22, "storeGsmaBannerImages - cannot get banner list"

    invoke-static/range {v21 .. v22}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/16 v21, 0x0

    goto :goto_16

    .line 319
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v10    # "fileList":[Ljava/io/File;
    :cond_62
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 322
    .local v20, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_68
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".banner"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 324
    .local v17, "newFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 325
    .local v5, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static/range {v20 .. v20}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->loadBitmapBanner(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 326
    .local v3, "banner":Landroid/graphics/Bitmap;
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 327
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 329
    .local v4, "byteArrayBanner":[B
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, "encodedBanner":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    .line 331
    .local v13, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 335
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "data/data/com.android.nfc/files/"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getFileContents(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getHashcode([B)Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, "hashCode":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    const-string v22, "data/data/com.android.nfc/files/"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v16, "newFile":Ljava/io/File;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_129

    .line 341
    const-string v22, "LRegisteredServicesCache"

    const-string v23, "storeGsmaBannerImages - same hashcode file already exist"

    invoke-static/range {v22 .. v23}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 352
    :goto_113
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setBannerHashCode(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_118} :catch_11a

    goto/16 :goto_2c

    .line 353
    .end local v3    # "banner":Landroid/graphics/Bitmap;
    .end local v4    # "byteArrayBanner":[B
    .end local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "encodedBanner":Ljava/lang/String;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "hashCode":Ljava/lang/String;
    .end local v16    # "newFile":Ljava/io/File;
    .end local v17    # "newFileName":Ljava/lang/String;
    :catch_11a
    move-exception v7

    .line 354
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    const-string v21, "LRegisteredServicesCache"

    const-string v22, "storeGsmaBannerImages - fail to create files"

    invoke-static/range {v21 .. v22}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/16 v21, 0x0

    goto/16 :goto_16

    .line 346
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "banner":Landroid/graphics/Bitmap;
    .restart local v4    # "byteArrayBanner":[B
    .restart local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "encodedBanner":Ljava/lang/String;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "hashCode":Ljava/lang/String;
    .restart local v16    # "newFile":Ljava/io/File;
    .restart local v17    # "newFileName":Ljava/lang/String;
    :cond_129
    :try_start_129
    new-instance v18, Ljava/io/File;

    const-string v22, "data/data/com.android.nfc/files/"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, ".banner"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .local v18, "renamedFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    .line 348
    .local v19, "ret":Z
    sget-boolean v22, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v23, "LRegisteredServicesCache"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "storeGsmaBannerImages - rename file to hashCode: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", result = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_177} :catch_11a

    goto :goto_113
.end method


# virtual methods
.method public addGsmaOffHostServices(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 7
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 156
    sget-boolean v1, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v2, "LRegisteredServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addGsmaOffHostServices: key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 158
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    sget-boolean v1, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v2, "LRegisteredServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addGsmaOffHostServices - update key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_41
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->clone(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 163
    .local v0, "cachedServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->updateGsmaOffHostServices()V

    .line 165
    const-string v1, "payment"

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->setDynamicAidGroupForCategory(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    .line 166
    const-string v1, "other"

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->setDynamicAidGroupForCategory(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->storeGsmaDynamicServices()Z

    .line 169
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->updateGsmaOffHostServices()V

    .line 170
    return-void
.end method

.method changeDefaultRoute()V
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;

    invoke-interface {v0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache$Callback;->changeDefaultRoute()V

    .line 669
    return-void
.end method

.method public native doGetMaxAidEntriesNumbers()I
.end method

.method public native doGetRoutingTableFreeSpace()I
.end method

.method public native doGetRoutingTableSize()I
.end method

.method public getFileContents(Ljava/lang/String;)[B
    .registers 13
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v6, "newFile":Ljava/io/File;
    if-nez v6, :cond_22

    .line 552
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 555
    :cond_22
    const-wide/16 v2, 0x0

    .line 556
    .local v2, "fileSize":J
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 557
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_35

    const-wide/32 v8, 0x4c4b40

    cmp-long v8, v2, v8

    if-lez v8, :cond_4a

    .line 558
    :cond_35
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File length is 0 or too large - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 561
    :cond_4a
    long-to-int v8, v2

    new-array v1, v8, [B

    .line 562
    .local v1, "fileBuffer":[B
    const/4 v4, 0x0

    .line 564
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_4e
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_d9
    .catchall {:try_start_4e .. :try_end_53} :catchall_bc

    .line 565
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 566
    .local v7, "readSize":I
    :try_start_54
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 567
    const/4 v8, -0x1

    if-ne v7, v8, :cond_69

    .line 568
    const-string v8, "LRegisteredServicesCache"

    const-string v9, "getFileContents(): EOF during read the file"

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_62} :catch_93
    .catchall {:try_start_54 .. :try_end_62} :catchall_d6

    .line 577
    :cond_62
    :goto_62
    if-eqz v5, :cond_d4

    .line 578
    :try_start_64
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_cc

    move-object v4, v5

    .line 585
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "readSize":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_68
    :goto_68
    return-object v1

    .line 570
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "readSize":I
    :cond_69
    int-to-long v8, v7

    cmp-long v8, v8, v2

    if-eqz v8, :cond_62

    .line 571
    :try_start_6e
    const-string v8, "LRegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getFileContents(): readSize("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") != fileSize("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_92} :catch_93
    .catchall {:try_start_6e .. :try_end_92} :catchall_d6

    goto :goto_62

    .line 573
    :catch_93
    move-exception v0

    move-object v4, v5

    .line 574
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "readSize":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_95
    :try_start_95
    const-string v8, "LRegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getFileContents(): File open or read Error - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_bc

    .line 577
    if-eqz v4, :cond_68

    .line 578
    :try_start_af
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_68

    .line 581
    :catch_b3
    move-exception v8

    const-string v8, "LRegisteredServicesCache"

    const-string v9, "getFileContents(): File Close Error"

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_bc
    move-exception v8

    .line 577
    :goto_bd
    if-eqz v4, :cond_c2

    .line 578
    :try_start_bf
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    .line 583
    :cond_c2
    :goto_c2
    throw v8

    .line 581
    :catch_c3
    move-exception v9

    const-string v9, "LRegisteredServicesCache"

    const-string v10, "getFileContents(): File Close Error"

    invoke-static {v9, v10}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "readSize":I
    :catch_cc
    move-exception v8

    const-string v8, "LRegisteredServicesCache"

    const-string v9, "getFileContents(): File Close Error"

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_68

    .line 575
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_d6
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_bd

    .line 573
    .end local v7    # "readSize":I
    :catch_d9
    move-exception v0

    goto :goto_95
.end method

.method public getGsmaOffHostServices()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 209
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v7

    .line 210
    .local v7, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 212
    .local v2, "installedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz v7, :cond_15

    if-nez v2, :cond_20

    .line 213
    :cond_15
    sget-boolean v9, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v10, "LRegisteredServicesCache"

    const-string v11, "getGsmaOffHostServices : userServices or installedServices is null"

    invoke-static {v9, v10, v11}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 264
    :goto_1f
    return-object v5

    .line 217
    :cond_20
    iget-object v1, v7, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 218
    .local v1, "apduServiceInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-nez v1, :cond_2f

    .line 219
    sget-boolean v9, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v10, "LRegisteredServicesCache"

    const-string v11, "getGsmaOffHostServices : apduServiceInfos is null"

    invoke-static {v9, v10, v11}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 220
    goto :goto_1f

    .line 223
    :cond_2f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v5, "retServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3c
    :goto_3c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_59

    .line 263
    sget-boolean v8, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v9, "LRegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getGsmaOffHostServices : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 224
    :cond_59
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 225
    .local v3, "key":Landroid/content/ComponentName;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 226
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v10

    if-nez v10, :cond_3c

    .line 230
    invoke-virtual {p0, v6}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->isGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 231
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 235
    :cond_75
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 236
    .local v4, "retService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v4, :cond_8c

    .line 237
    sget-boolean v9, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v10, "LRegisteredServicesCache"

    const-string v11, "getGsmaOffHostServices : tempService is null"

    invoke-static {v9, v10, v11}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 238
    goto :goto_1f

    .line 248
    :cond_8c
    const/4 v10, 0x1

    invoke-static {v4, v10}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->setStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;Z)Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 250
    const-string v10, "payment"

    invoke-virtual {v6, v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    .line 251
    .local v0, "aidGrp":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v0, :cond_9b

    .line 252
    invoke-virtual {v4, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 254
    :cond_9b
    const-string v10, "other"

    invoke-virtual {v6, v10}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_a6

    .line 256
    invoke-virtual {v4, v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V

    .line 259
    :cond_a6
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c
.end method

.method public getHashcode([B)Ljava/lang/String;
    .registers 10
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 589
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 590
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 591
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 593
    .local v0, "hashbytes":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 594
    .local v3, "sbuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v4, v0

    if-lt v1, v4, :cond_1b

    .line 598
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 595
    :cond_1b
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method protected getInstalledServices(I)Ljava/util/ArrayList;
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 126
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 127
    .local v1, "retServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2c

    .line 136
    iget-object v5, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_56

    .line 141
    if-eqz v1, :cond_2b

    .line 142
    iget-object v5, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/cardemulation/LOtherCategoryManager;

    move-result-object v0

    .line 143
    .local v0, "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/LOtherCategoryManager;->update(ILjava/util/ArrayList;)V

    .line 146
    .end local v0    # "manager":Lcom/android/nfc/cardemulation/LOtherCategoryManager;
    :cond_2b
    return-object v1

    .line 127
    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 128
    .local v2, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_38
    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 129
    .local v4, "srv":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_38

    .line 136
    .end local v2    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "srv":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_56
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 137
    .restart local v4    # "srv":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-boolean v6, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v7, "LRegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "computeOffHostServices : srv = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public getServicesGsmaForCategory(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    return-object v0
.end method

.method protected initialize()V
    .registers 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->readDynamicAidsLocked()V

    .line 108
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->loadGsmaDynamicServices()V

    .line 106
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->invalidateCache(I)V

    .line 111
    return-void

    .line 106
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 6
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 120
    const/4 v1, 0x0

    :goto_d
    return v1

    .line 115
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 116
    .local v0, "srv":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    const/4 v1, 0x1

    goto :goto_d
.end method

.method protected loadGsmaDynamicServices()V
    .registers 14

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 458
    const/4 v2, 0x0

    .line 460
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_3
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 461
    const-string v7, "LRegisteredServicesCache"

    const-string v8, "GSMA Dynamic AIDs file does not exist."

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_96
    .catchall {:try_start_3 .. :try_end_16} :catchall_be

    .line 493
    if-eqz v2, :cond_1b

    .line 495
    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_c8

    .line 499
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->loadGsmaBannerImages()Z

    .line 501
    :goto_1e
    return-void

    .line 464
    :cond_1f
    :try_start_1f
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 465
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 466
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 467
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 468
    .local v1, "eventType":I
    :goto_31
    if-eq v1, v12, :cond_35

    .line 469
    if-ne v1, v11, :cond_51

    .line 472
    :cond_35
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "services"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 474
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_46} :catch_96
    .catchall {:try_start_1f .. :try_end_46} :catchall_be

    .line 476
    .local v4, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :goto_46
    if-ne v1, v11, :cond_56

    .line 493
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_48
    if-eqz v2, :cond_4d

    .line 495
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_cf

    .line 499
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->loadGsmaBannerImages()Z

    goto :goto_1e

    .line 470
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_51
    :try_start_51
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_31

    .line 477
    .restart local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_56
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 478
    if-ne v1, v12, :cond_88

    const-string v7, "service"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 479
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->createFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v6

    .line 480
    .local v6, "temp":Landroid/nfc/cardemulation/ApduServiceInfo;
    sget-boolean v7, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v8, "LRegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parsed OffHostService : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v6    # "temp":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_83
    :goto_83
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_46

    .line 483
    :cond_88
    const/4 v7, 0x3

    if-ne v1, v7, :cond_83

    const-string v7, "services"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 484
    iput-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_95} :catch_96
    .catchall {:try_start_51 .. :try_end_95} :catchall_be

    goto :goto_83

    .line 489
    .end local v1    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v5    # "tagName":Ljava/lang/String;
    :catch_96
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    :try_start_97
    const-string v7, "LRegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not parse GSMA dynamic AIDs file, trashing. - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v7, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->delete()V
    :try_end_b4
    .catchall {:try_start_97 .. :try_end_b4} :catchall_be

    .line 493
    if-eqz v2, :cond_b9

    .line 495
    :try_start_b6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_cb

    .line 499
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->loadGsmaBannerImages()Z

    goto/16 :goto_1e

    .line 492
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_be
    move-exception v7

    .line 493
    if-eqz v2, :cond_c4

    .line 495
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_cd

    .line 499
    :cond_c4
    :goto_c4
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->loadGsmaBannerImages()Z

    .line 500
    throw v7

    :catch_c8
    move-exception v7

    goto/16 :goto_1b

    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_cb
    move-exception v7

    goto :goto_b9

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_cd
    move-exception v8

    goto :goto_c4

    .restart local v1    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    :catch_cf
    move-exception v7

    goto/16 :goto_4d
.end method

.method protected offHostServiceAdd(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v0, "SecureElementType"

    const-string v1, "INITVALUE"

    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 152
    invoke-super {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->offHostServiceAdd(Ljava/util/List;Ljava/util/List;)V

    .line 153
    :cond_d
    return-void
.end method

.method public removeGsmaOffHostServices(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 6
    .param p1, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v1, "LRegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeGsmaOffHostServices: key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->isStaticService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 194
    sget-boolean v0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v1, "LRegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeGsmaOffHostServices: skip try to remove static service - key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getServiceName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_3a
    return-void

    .line 197
    :cond_3b
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->storeGsmaDynamicServices()Z

    .line 200
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->updateGsmaOffHostServices()V

    goto :goto_3a
.end method

.method protected removeServiceCache(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "removedPkgName":Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v3, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :try_start_1a
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 286
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 287
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 293
    :cond_36
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->storeGsmaDynamicServices()Z

    .line 294
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->updateGsmaOffHostServices()V

    .line 298
    .end local v3    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_3c
    :goto_3c
    return-void

    .line 280
    .restart local v3    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 281
    .local v2, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-static {v2}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->getPackageName(Landroid/nfc/cardemulation/ApduServiceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 282
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_50} :catch_51

    goto :goto_20

    .line 296
    .end local v2    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_51
    move-exception v4

    const-string v4, "LRegisteredServicesCache"

    const-string v5, "removeServiceCache - Exception"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 287
    :cond_5a
    :try_start_5a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 288
    .restart local v2    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 289
    .local v0, "index":I
    sget-boolean v5, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->DBG:Z

    const-string v6, "LRegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Removing service: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v5, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_85} :catch_51

    goto :goto_30
.end method

.method protected storeGsmaDynamicServices()Z
    .registers 7

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 428
    .local v2, "ret":Z
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->storeGsmaBannerImages()Z

    .line 430
    :try_start_5
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 431
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 432
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 433
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 434
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 435
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_44

    .line 436
    const/4 v4, 0x0

    const-string v5, "services"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaOffHostServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_51

    .line 440
    const/4 v4, 0x0

    const-string v5, "services"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    :cond_44
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 443
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_5b
    .catchall {:try_start_5 .. :try_end_4c} :catchall_6f

    .line 444
    const/4 v2, 0x1

    .line 452
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->refreshGsmaBannerImages()V

    .line 454
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_50
    return v2

    .line 437
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_51
    :try_start_51
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 438
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-static {v3, v1}, Landroid/nfc/cardemulation/ApduServiceInfoEx;->writeAsXml(Landroid/nfc/cardemulation/ApduServiceInfo;Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5a} :catch_5b
    .catchall {:try_start_51 .. :try_end_5a} :catchall_6f

    goto :goto_38

    .line 446
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_5b
    move-exception v4

    :try_start_5c
    const-string v4, "LRegisteredServicesCache"

    const-string v5, "Error writing GSMA dynamic AIDs"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-eqz v0, :cond_6a

    .line 448
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->mGsmaDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_6f

    .line 450
    :cond_6a
    const/4 v2, 0x0

    .line 452
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->refreshGsmaBannerImages()V

    goto :goto_50

    .line 451
    :catchall_6f
    move-exception v4

    .line 452
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->refreshGsmaBannerImages()V

    .line 453
    throw v4
.end method

.method protected updateGsmaOffHostServices()V
    .registers 2

    .prologue
    .line 205
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->invalidateCache(I)V

    .line 206
    return-void
.end method
