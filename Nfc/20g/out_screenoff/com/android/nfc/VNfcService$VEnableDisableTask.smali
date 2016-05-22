.class Lcom/android/nfc/VNfcService$VEnableDisableTask;
.super Lcom/android/nfc/LNfcService$LEnableDisableTask;
.source "VNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VEnableDisableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/VNfcService;)V
    .registers 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method checkSecureElementConfiguration()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 380
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doGetSecureElementList()[I

    move-result-object v1

    .line 383
    .local v1, "Se_list":[I
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->GetDefaultSE()I

    move-result v0

    .line 384
    .local v0, "Se_Num":I
    if-eqz v0, :cond_63

    .line 386
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    invoke-static {v5, v9}, Lcom/android/nfc/VNfcService;->access$1(Lcom/android/nfc/VNfcService;Z)V

    .line 387
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    invoke-static {v5, v0}, Lcom/android/nfc/VNfcService;->access$2(Lcom/android/nfc/VNfcService;I)V

    .line 396
    :cond_1e
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    .line 397
    iget-object v6, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v6, v6, Lcom/android/nfc/VNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "secure_element_on"

    iget-object v8, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ON_DEFAULT:Z
    invoke-static {v8}, Lcom/android/nfc/VNfcService;->access$3(Lcom/android/nfc/VNfcService;)Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 396
    invoke-static {v5, v6}, Lcom/android/nfc/VNfcService;->access$4(Lcom/android/nfc/VNfcService;Z)V

    .line 399
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->mNfcSecureElementState:Z
    invoke-static {v5}, Lcom/android/nfc/VNfcService;->access$5(Lcom/android/nfc/VNfcService;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 401
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "secure_element_id"

    iget-object v7, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ID_DEFAULT:I
    invoke-static {v7}, Lcom/android/nfc/VNfcService;->access$6(Lcom/android/nfc/VNfcService;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 403
    .local v4, "secureElementId":I
    if-eqz v1, :cond_62

    .line 405
    const/4 v5, 0x3

    if-eq v4, v5, :cond_ca

    .line 415
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5, v10}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 416
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5, v9}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 418
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5f
    array-length v5, v1

    if-lt v3, v5, :cond_75

    .line 469
    .end local v3    # "i":I
    .end local v4    # "secureElementId":I
    :cond_62
    :goto_62
    return-void

    .line 389
    :cond_63
    if-eqz v1, :cond_1e

    .line 390
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_66
    array-length v5, v1

    if-ge v3, v5, :cond_1e

    .line 391
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    aget v6, v1, v3

    invoke-virtual {v5, v6}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 420
    .restart local v4    # "secureElementId":I
    :cond_75
    aget v5, v1, v3

    if-ne v5, v4, :cond_c7

    .line 421
    if-ne v4, v9, :cond_96

    .line 422
    array-length v5, v1

    if-le v5, v9, :cond_87

    .line 423
    sget-boolean v5, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v6, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v7, "Deselect UICC"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_87
    sget-object v5, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v6, "Select SMX"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5, v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    goto :goto_62

    .line 429
    :cond_96
    if-ne v4, v10, :cond_b3

    .line 430
    array-length v5, v1

    if-le v5, v9, :cond_a4

    .line 431
    sget-boolean v5, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v6, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v7, "Deselect SMX"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_a4
    sget-object v5, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v6, "Select UICC"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5, v4}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    goto :goto_62

    .line 437
    :cond_b3
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    # getter for: Lcom/android/nfc/VNfcService;->SECURE_ELEMENT_ID_DEFAULT:I
    invoke-static {v5}, Lcom/android/nfc/VNfcService;->access$6(Lcom/android/nfc/VNfcService;)I

    move-result v5

    if-ne v4, v5, :cond_c7

    .line 438
    array-length v5, v1

    if-le v5, v9, :cond_c7

    .line 439
    sget-boolean v5, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v6, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v7, "UICC deselected by default"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 445
    .end local v3    # "i":I
    :cond_ca
    sget-boolean v5, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v6, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v7, "Select ALL_SE"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 447
    array-length v5, v1

    if-le v5, v9, :cond_62

    .line 449
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d7
    array-length v5, v1

    if-ge v3, v5, :cond_62

    .line 450
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    aget v6, v1, v3

    invoke-virtual {v5, v6}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSelectSecureElement(I)V

    .line 453
    const-wide/16 v6, 0xc8

    :try_start_e5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_eb

    .line 449
    :goto_e8
    add-int/lit8 v3, v3, 0x1

    goto :goto_d7

    .line 454
    :catch_eb
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e8

    .line 463
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "secureElementId":I
    :cond_f0
    if-eqz v1, :cond_62

    array-length v5, v1

    if-lez v5, :cond_62

    .line 464
    sget-boolean v5, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v6, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v7, "UICC/eSE deselected by default"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5, v10}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    .line 466
    iget-object v5, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v5, v5, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v5, v9}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doDeselectSecureElement(I)V

    goto/16 :goto_62
.end method

.method downloadFirmware()V
    .registers 5

    .prologue
    .line 362
    sget-boolean v1, Lcom/android/nfc/VNfcService;->DBG:Z

    sget-object v2, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v3, "downloadFirmware"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    const-string v2, "downloadFirmware"

    const/16 v3, 0x4e20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 364
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 366
    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v1, v1, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->downloadFirmware()Z

    .line 368
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 370
    invoke-super {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->downloadFirmware()V

    .line 371
    return-void
.end method

.method enableInternal(ZZZZ)Z
    .registers 8
    .param p1, "isApplyRoutingForce"    # Z
    .param p2, "cardOn"    # Z
    .param p3, "discoveryOn"    # Z
    .param p4, "p2pOn"    # Z

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v0, v0, Lcom/android/nfc/VNfcService;->mVDeviceHost:Lcom/android/nfc/dhimpl/VNativeNfcManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/VNativeNfcManager;->doSetVenConfigValue(I)V

    .line 474
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "applyRouting -3"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v1, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    iget-object v1, v1, Lcom/android/nfc/VNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v1}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v1

    iput v1, v0, Lcom/android/nfc/VNfcService;->mScreenState:I

    .line 478
    sget-object v0, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_locked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v2, "na"

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 479
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    const-string v1, "applyRouting mIsRouteForced"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/nfc/VNfcService$VEnableDisableTask;->this$0:Lcom/android/nfc/VNfcService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/VNfcService;->mIsRouteForced:Z

    .line 483
    :cond_33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    move-result v0

    return v0
.end method
