.class Lcom/android/nfc/LNfcService$LNfcServiceAddonService;
.super Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;
.source "LNfcService.java"

# interfaces
.implements Lcom/android/nfc/LGsmaAPIService$LGsmaAPIServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LNfcServiceAddonService"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 3

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Lcom/lge/nfcaddon/INfcAdapterAddon$Stub;-><init>()V

    .line 1422
    const-string v0, "LNfcServiceAddonService"

    iput-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private getNfcStatusMasking(II)I
    .registers 4
    .param p1, "status"    # I
    .param p2, "powerStatusMaskingbit"    # I

    .prologue
    .line 1686
    shr-int v0, p1, p2

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private isNfcPowerOnStatus(IIZ)Z
    .registers 6
    .param p1, "status"    # I
    .param p2, "powerStatusMaskingbit"    # I
    .param p3, "presentStatus"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1680
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v0

    .line 1682
    .local v0, "powerstatus":I
    if-nez v0, :cond_8

    .end local p3    # "presentStatus":Z
    :goto_7
    return p3

    .restart local p3    # "presentStatus":Z
    :cond_8
    if-ne v0, v1, :cond_c

    move p3, v1

    goto :goto_7

    :cond_c
    const/4 p3, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getCPLC([B)Z
    .registers 11
    .param p1, "response"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1586
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1588
    const/4 v0, 0x0

    .line 1589
    .local v0, "ret_val":Z
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v3}, Lcom/android/nfc/LNfcServiceTestApis;->NfcInitIOCT()Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 1590
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v4, "Processing......NFC SmartMX SELF TEST"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v3}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSecureElementConnection()I

    move-result v2

    .line 1594
    .local v2, "tmpHandle":I
    if-nez v2, :cond_3b

    .line 1595
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SMX Handle : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const/4 v0, 0x0

    .line 1617
    .end local v2    # "tmpHandle":I
    :goto_3a
    return v0

    .line 1598
    .restart local v2    # "tmpHandle":I
    :cond_3b
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SMX Handle : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    const/4 v4, 0x5

    new-array v4, v4, [B

    const/16 v5, -0x80

    aput-byte v5, v4, v7

    const/16 v5, -0x36

    aput-byte v5, v4, v8

    const/4 v5, 0x2

    const/16 v6, -0x61

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x7f

    aput-byte v6, v4, v5

    invoke-interface {v3, v2, v4}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSecureElementTransceive(I[B)[B

    move-result-object v1

    .line 1600
    .local v1, "tmpCplc":[B
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v3, v2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSecureElementDisconnect(I)Z

    .line 1602
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "close SE : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    if-nez v1, :cond_a6

    .line 1604
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v4, "cplc Data null"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const/4 v0, 0x0

    .line 1611
    :goto_91
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cplc data Right?: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 1607
    :cond_a6
    const/4 v0, 0x1

    .line 1608
    array-length v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v7

    .line 1609
    array-length v3, v1

    invoke-static {v1, v7, p1, v8, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_91

    .line 1614
    .end local v1    # "tmpCplc":[B
    .end local v2    # "tmpHandle":I
    :cond_b0
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v4, "Processing......NFC SmartMX SELF TEST FAIL(init)"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public getCardEmulationInterface()Lcom/lge/nfcaddon/ICardEmulationAddon;
    .registers 2

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCardEmulationAddonService:Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getGsmaNfcControllerInterface()Lcom/lge/nfcaddon/IGsmaNfcController;
    .registers 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    return-object v0
.end method

.method public getNfcAddonPreference(I)Z
    .registers 5
    .param p1, "prefnumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1550
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_8

    .line 1558
    :goto_7
    return v0

    .line 1554
    :cond_8
    packed-switch p1, :pswitch_data_20

    .line 1558
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-virtual {v0, p1}, Lcom/android/nfc/utils/LNfcPopupPreference;->getPopupEnable(I)Z

    move-result v0

    goto :goto_7

    .line 1556
    :pswitch_14
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "calling_nfcsound"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7

    .line 1554
    nop

    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_14
    .end packed-switch
.end method

.method public getNfcCardState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1434
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1433
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getNfcConfigureValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1692
    :try_start_1
    const-class v3, Lcom/lge/nfcconfig/NfcConfigure;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "m"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1693
    .local v0, "configKey":Ljava/lang/reflect/Field;
    if-nez v0, :cond_21

    .line 1694
    const-class v3, Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1d} :catch_2c

    move-result-object v0

    .line 1695
    if-nez v0, :cond_21

    .line 1710
    .end local v0    # "configKey":Ljava/lang/reflect/Field;
    :goto_20
    return-object v2

    .line 1700
    .restart local v0    # "configKey":Ljava/lang/reflect/Field;
    :cond_21
    :try_start_21
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1701
    .local v1, "valueObject":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2a} :catch_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2a} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_2a} :catch_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_2a} :catch_2c

    move-result-object v2

    goto :goto_20

    .line 1710
    .end local v0    # "configKey":Ljava/lang/reflect/Field;
    .end local v1    # "valueObject":Ljava/lang/Object;
    :catch_2c
    move-exception v3

    goto :goto_20

    .restart local v0    # "configKey":Ljava/lang/reflect/Field;
    :catch_2e
    move-exception v3

    goto :goto_20

    :catch_30
    move-exception v3

    goto :goto_20

    :catch_32
    move-exception v3

    goto :goto_20
.end method

.method public getNfcDiscoveryState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1441
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1440
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getNfcInfo(I)Ljava/lang/String;
    .registers 7
    .param p1, "command"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1722
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v2, "getNfcInfo in"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1725
    const-string v0, ""

    .line 1727
    .local v0, "mNfcData":Ljava/lang/String;
    sget-boolean v1, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNfcInfo::command = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1728
    packed-switch p1, :pswitch_data_7c

    .line 1757
    :cond_29
    :goto_29
    sget-boolean v1, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNfcInfo::mNfcData = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1758
    return-object v0

    .line 1730
    :pswitch_40
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mVendorType:Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;

    invoke-virtual {v1}, Lcom/lge/nfcconfig/NfcConfigure$ChipSetList;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 1731
    goto :goto_29

    .line 1734
    :pswitch_49
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/LDeviceHost;->checkChipVer()Ljava/lang/String;

    move-result-object v0

    .line 1735
    goto :goto_29

    .line 1738
    :pswitch_52
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/LDeviceHost;->checkMWVersion()Ljava/lang/String;

    move-result-object v0

    .line 1739
    goto :goto_29

    .line 1742
    :pswitch_5b
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/LDeviceHost;->checkFWVersion()Ljava/lang/String;

    move-result-object v0

    .line 1743
    goto :goto_29

    .line 1746
    :pswitch_64
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_29

    .line 1749
    sget-object v1, Lcom/android/nfc/LNfcService;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    const/4 v2, 0x3

    const-string v3, "host"

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1750
    const-string v0, "On Host"

    .line 1751
    :goto_77
    goto :goto_29

    .line 1750
    :cond_78
    const-string v0, "Off Host"

    goto :goto_77

    .line 1728
    nop

    :pswitch_data_7c
    .packed-switch 0x64
        :pswitch_40
        :pswitch_49
        :pswitch_52
        :pswitch_5b
        :pswitch_64
    .end packed-switch
.end method

.method public getNfcP2pState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1447
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1448
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1447
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getNfcSysState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1426
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1427
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1426
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isNfcCardModeEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1462
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1461
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isNfcP2pModeEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1476
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1475
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isNfcRwModeEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1469
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1468
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isNfcSystemEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1454
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1455
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1454
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isWirelessChargingModeOn()Z
    .registers 3

    .prologue
    .line 1581
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public resetNfcSettings()Z
    .registers 4

    .prologue
    .line 1811
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v2, "resetNfcSettings"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1813
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->resetSettings()Z

    move-result v0

    return v0
.end method

.method public sendNfcTestCommand(I[B)Z
    .registers 7
    .param p1, "command"    # I
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1495
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1496
    const/4 v0, 0x0

    .line 1498
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_8a

    .line 1544
    :cond_b
    :goto_b
    :pswitch_b
    return v0

    .line 1500
    :pswitch_c
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/nfc/LNfcServiceTestApis;->NfcPowerOn(I)Z

    move-result v0

    .end local v0    # "result":Z
    iput-boolean v0, v1, Lcom/android/nfc/LNfcService;->mIsNfcModeOn:Z

    .line 1501
    .restart local v0    # "result":Z
    goto :goto_b

    .line 1503
    :pswitch_1a
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1}, Lcom/android/nfc/LNfcServiceTestApis;->NfcPowerOff()Z

    move-result v0

    .line 1504
    if-eqz v0, :cond_b

    .line 1505
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/LNfcService;->mIsNfcModeOn:Z

    goto :goto_b

    .line 1509
    :pswitch_2a
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSwpSelfTest([B)Z

    move-result v0

    .line 1510
    goto :goto_b

    .line 1512
    :pswitch_33
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcAntennaSelfTest([B)Z

    move-result v0

    .line 1513
    goto :goto_b

    .line 1515
    :pswitch_3c
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcReaderModeTest([B)Z

    move-result v0

    .line 1516
    goto :goto_b

    .line 1518
    :pswitch_45
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcReadFirmwareFileVersion([B)Z

    move-result v0

    .line 1519
    goto :goto_b

    .line 1521
    :pswitch_4e
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1}, Lcom/android/nfc/LNfcServiceTestApis;->NfcDownloadFirmware()Z

    move-result v0

    .line 1522
    goto :goto_b

    .line 1524
    :pswitch_57
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcReadFirmwareVersion([B)Z

    move-result v0

    .line 1525
    goto :goto_b

    .line 1527
    :pswitch_60
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcStartCWE([B)Z

    move-result v0

    .line 1528
    goto :goto_b

    .line 1530
    :pswitch_69
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcStopCWE([B)Z

    move-result v0

    .line 1531
    goto :goto_b

    .line 1533
    :pswitch_72
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcSetRegValue([B)Z

    move-result v0

    .line 1534
    goto :goto_b

    .line 1536
    :pswitch_7b
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mTestApis:Lcom/android/nfc/LNfcServiceTestApis;

    invoke-interface {v1, p2}, Lcom/android/nfc/LNfcServiceTestApis;->NfcGetRegValue([B)Z

    move-result v0

    .line 1537
    goto :goto_b

    .line 1539
    :pswitch_84
    invoke-virtual {p0, p2}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getCPLC([B)Z

    move-result v0

    .line 1540
    goto :goto_b

    .line 1498
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1a
        :pswitch_2a
        :pswitch_33
        :pswitch_3c
        :pswitch_45
        :pswitch_4e
        :pswitch_57
        :pswitch_60
        :pswitch_69
        :pswitch_b
        :pswitch_b
        :pswitch_72
        :pswitch_7b
        :pswitch_84
    .end packed-switch
.end method

.method public setForceEnableMode(I)Z
    .registers 8
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1781
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setForceEnableMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->checkNfcLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1805
    :goto_20
    return v2

    .line 1787
    :cond_21
    sparse-switch p1, :sswitch_data_5c

    :goto_24
    move v2, v1

    .line 1805
    goto :goto_20

    .line 1790
    :sswitch_26
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_4d

    move v0, v1

    :goto_2d
    iput-boolean v0, v3, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    .line 1791
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_38
    iput-boolean v0, v3, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    .line 1793
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_24

    :cond_4d
    move v0, v2

    .line 1790
    goto :goto_2d

    :cond_4f
    move v0, v2

    .line 1791
    goto :goto_38

    .line 1797
    :sswitch_51
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v1, v0, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    goto :goto_24

    .line 1800
    :sswitch_56
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v2, v0, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    goto :goto_24

    .line 1787
    nop

    :sswitch_data_5c
    .sparse-switch
        0x1f -> :sswitch_56
        0x21 -> :sswitch_51
        0x29 -> :sswitch_26
        0x2b -> :sswitch_26
    .end sparse-switch
.end method

.method public setLGSharingModeCallback(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z
    .registers 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1764
    sget-boolean v2, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setLGSharingModeCallback : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1765
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    if-nez v2, :cond_1e

    .line 1766
    const/4 v1, 0x0

    .line 1776
    :cond_1d
    :goto_1d
    return v1

    .line 1769
    :cond_1e
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mSharingManager:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/nfc/lgsharing/LSharingManager;->setMode(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z

    move-result v1

    .line 1771
    .local v1, "ret":Z
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    instance-of v2, v2, Lcom/android/nfc/LP2pLinkManager;

    if-eqz v2, :cond_1d

    .line 1772
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v2, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    check-cast v0, Lcom/android/nfc/LP2pLinkManager;

    .line 1773
    .local v0, "manager":Lcom/android/nfc/LP2pLinkManager;
    invoke-virtual {v0}, Lcom/android/nfc/LP2pLinkManager;->checkLgSharing()V

    goto :goto_1d
.end method

.method public setNfcAddonPreference(IZ)Z
    .registers 5
    .param p1, "prefnumber"    # I
    .param p2, "prefvalue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_8

    .line 1565
    const/4 v0, 0x0

    .line 1574
    :goto_7
    return v0

    .line 1568
    :cond_8
    packed-switch p1, :pswitch_data_26

    .line 1574
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPopupPreference:Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/utils/LNfcPopupPreference;->setPopupEnable(IZ)Z

    move-result v0

    goto :goto_7

    .line 1570
    :pswitch_14
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "calling_nfcsound"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1571
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1572
    const/4 v0, 0x1

    goto :goto_7

    .line 1568
    :pswitch_data_26
    .packed-switch 0x3
        :pswitch_14
    .end packed-switch
.end method

.method public setNfcPowerStatus(I)Z
    .registers 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->setNfcPowerStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public setNfcPowerStatus(IZ)Z
    .registers 15
    .param p1, "status"    # I
    .param p2, "isCallbackEnable"    # Z

    .prologue
    .line 1630
    sget-boolean v5, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setNfcPowerStatus : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "0x%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1631
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->isNfcPowerOnStatus(IIZ)Z

    move-result v0

    .line 1632
    .local v0, "cardOn":Z
    const/4 v5, 0x2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->isNfcPowerOnStatus(IIZ)Z

    move-result v1

    .line 1633
    .local v1, "discoveryOn":Z
    const/4 v5, 0x4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->isNfcPowerOnStatus(IIZ)Z

    move-result v2

    .line 1634
    .local v2, "p2pOn":Z
    if-nez v0, :cond_ba

    if-nez v1, :cond_ba

    const/4 v4, 0x0

    .line 1636
    .local v4, "sysOn":Z
    :goto_46
    sget-boolean v5, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sys : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", card : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", discovery : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", p2p : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1638
    if-nez p2, :cond_91

    .line 1639
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    if-eqz v5, :cond_91

    .line 1640
    if-eqz v4, :cond_91

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v5

    if-nez v5, :cond_91

    .line 1641
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcPopupList;->applyNfcAntennaPositionPopup()Z

    .line 1644
    :cond_91
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->isWirelessChargingModeOn()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 1645
    sget-boolean v5, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v7, "setNfcPowerStatus : cannot_turnon_during_charging"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1646
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const v7, 0x7f080057

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1648
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1649
    const/4 v5, 0x0

    .line 1676
    :goto_b9
    return v5

    .line 1634
    .end local v4    # "sysOn":Z
    :cond_ba
    const/4 v4, 0x1

    goto :goto_46

    .line 1653
    .restart local v4    # "sysOn":Z
    :cond_bc
    sget-object v6, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    if-eqz v4, :cond_12d

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_12d

    const/4 v5, 0x1

    :goto_cc
    invoke-virtual {v6, v5}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 1655
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v5

    if-eqz v5, :cond_e9

    .line 1656
    sget-object v6, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    if-eqz v0, :cond_12f

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_12f

    const/4 v5, 0x1

    :goto_e6
    invoke-virtual {v6, v5}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 1659
    :cond_e9
    const/4 v5, 0x2

    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v5

    if-eqz v5, :cond_103

    .line 1660
    if-eqz v1, :cond_131

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_131

    const/4 v3, 0x1

    .line 1661
    .local v3, "powerstate":Z
    :goto_fe
    sget-object v5, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v5, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 1664
    .end local v3    # "powerstate":Z
    :cond_103
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5}, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->getNfcStatusMasking(II)I

    move-result v5

    if-eqz v5, :cond_123

    .line 1665
    if-eqz v2, :cond_133

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    const/16 v6, 0x9

    invoke-static {v5, v6}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_133

    const/4 v3, 0x1

    .line 1666
    .restart local v3    # "powerstate":Z
    :goto_119
    sget-object v5, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v5, v3}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 1667
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5, v3}, Lcom/android/nfc/LNfcService;->setBeamShareActivityState(Z)V

    .line 1671
    .end local v3    # "powerstate":Z
    :cond_123
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->saveAirplaneSetting()Z

    move-result v5

    if-nez v5, :cond_135

    .line 1672
    const/4 v5, 0x0

    goto :goto_b9

    .line 1653
    :cond_12d
    const/4 v5, 0x0

    goto :goto_cc

    .line 1656
    :cond_12f
    const/4 v5, 0x0

    goto :goto_e6

    .line 1660
    :cond_131
    const/4 v3, 0x0

    goto :goto_fe

    .line 1665
    :cond_133
    const/4 v3, 0x0

    goto :goto_119

    .line 1675
    :cond_135
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->newEnableDisableTask()Lcom/android/nfc/NfcService$EnableDisableTask;

    move-result-object v6

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    if-eqz v4, :cond_161

    const/4 v5, 0x1

    :goto_14b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v8, 0x2

    if-eqz p2, :cond_163

    const/4 v5, 0x1

    :goto_155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1676
    const/4 v5, 0x1

    goto/16 :goto_b9

    .line 1675
    :cond_161
    const/4 v5, 0x0

    goto :goto_14b

    :cond_163
    const/4 v5, 0x0

    goto :goto_155
.end method

.method public setPresentUid(I)V
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/utils/LNfcPopupPreference;->setUserID(I)V

    .line 1717
    return-void
.end method

.method public showAntennaPositionDialog()Z
    .registers 4

    .prologue
    .line 1818
    sget-boolean v0, Lcom/android/nfc/LNfcService;->DBG:Z

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->TAG:Ljava/lang/String;

    const-string v2, "showAntennaPositionDialog"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1819
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    if-nez v0, :cond_11

    .line 1820
    const/4 v0, 0x0

    .line 1823
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LNfcServiceAddonService;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPopupList:Lcom/android/nfc/LNfcPopupList;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcPopupList;->applyNfcAntennaPositionPopup()Z

    move-result v0

    goto :goto_10
.end method
