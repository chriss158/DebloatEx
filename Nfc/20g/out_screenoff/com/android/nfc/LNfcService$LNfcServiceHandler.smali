.class public Lcom/android/nfc/LNfcService$LNfcServiceHandler;
.super Lcom/android/nfc/NfcService$NfcServiceHandler;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LNfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method protected dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .registers 10
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    .line 1992
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mTagLongTimePopupSupport:Z

    if-eqz v0, :cond_12

    .line 1993
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    const/16 v2, 0x66

    const-wide/32 v4, 0x493e0

    const/4 v6, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/LNfcService;->sendMessageDelay(ILjava/lang/Object;JZ)V

    .line 1995
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 1996
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x9

    .line 1884
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_120

    .line 1963
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown message received : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 1969
    :cond_20
    :goto_20
    :sswitch_20
    return-void

    .line 1887
    :sswitch_21
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    if-nez v3, :cond_35

    .line 1888
    const-string v3, "LNfcService"

    const-string v4, "P2P disable by SUW"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 1891
    :cond_35
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1892
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RW mode disabled, so Tag message not handled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_20

    .line 1894
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1895
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    goto :goto_20

    .line 1899
    .end local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_5f
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_20

    .line 1902
    :sswitch_63
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    if-eqz v3, :cond_70

    .line 1903
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-virtual {v3}, Lcom/android/nfc/handover/LHandoverDataParser;->handoverLLCPDeactivated()V

    .line 1905
    :cond_70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 1906
    .local v0, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v3

    if-nez v3, :cond_a7

    .line 1907
    :cond_7c
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No Restart Polling loop(only Android Beam UI finished) device = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getDiscoveryEnable() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1907
    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v3}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    goto/16 :goto_20

    .line 1912
    :cond_a7
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_20

    .line 1916
    .end local v0    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    :sswitch_ac
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/nfc/LNfcService;->applyWirelessChargingMode(Z)V

    goto/16 :goto_20

    .line 1920
    :sswitch_b4
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-virtual {v4, v3}, Lcom/android/nfc/LNfcService;->applyNfcTagLongTimePopup(Lcom/android/nfc/DeviceHost$TagEndpoint;)Z

    goto/16 :goto_20

    .line 1924
    :sswitch_bf
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mLCardEmulationManager:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->applyExceedAIDTable()V

    goto/16 :goto_20

    .line 1931
    :sswitch_c8
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    if-eqz v3, :cond_20

    .line 1934
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 1935
    .local v2, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    const/16 v3, 0x6a

    invoke-virtual {p0, v3, v2}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->sendCEMessage(ILjava/lang/Object;)V

    goto/16 :goto_20

    .line 1940
    .end local v2    # "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    :sswitch_d9
    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f8

    sget-object v4, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v4, v4, Lcom/lge/nfcconfig/NfcConfigure;->mAccessControlEnable:Z

    if-eqz v4, :cond_f8

    .line 1941
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v3, :cond_f5

    :goto_ef
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->sendCEMessage(ILjava/lang/Object;)V

    goto/16 :goto_20

    :cond_f5
    const/16 v3, 0xa

    goto :goto_ef

    .line 1944
    :cond_f8
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_20

    .line 1956
    :sswitch_fd
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_10e

    .line 1957
    const-string v3, "LNfcService"

    const-string v4, "Default route update in only NFC on status"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 1960
    :cond_10e
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v3, Lcom/android/nfc/LNfcService;->mLDeviceHost:Lcom/android/nfc/LDeviceHost;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/android/nfc/LDeviceHost;->doSetDefaultDest(I)V

    goto/16 :goto_20

    .line 1884
    nop

    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_21
        0x2 -> :sswitch_63
        0x3 -> :sswitch_21
        0x9 -> :sswitch_d9
        0xa -> :sswitch_d9
        0x65 -> :sswitch_ac
        0x66 -> :sswitch_b4
        0x67 -> :sswitch_bf
        0x68 -> :sswitch_fd
        0x69 -> :sswitch_20
        0x6a -> :sswitch_c8
    .end sparse-switch
.end method

.method public sendCEMessage(ILjava/lang/Object;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v1}, Lcom/android/nfc/LNfcService;->access$1(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1873
    const-string v1, "NfcAccessControl"

    const-string v2, "mCeHandler is null"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    :goto_f
    return-void

    .line 1876
    :cond_10
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v1}, Lcom/android/nfc/LNfcService;->access$1(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1877
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1878
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1879
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v1}, Lcom/android/nfc/LNfcService;->access$1(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_f
.end method

.method protected sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1973
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1974
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1976
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 1978
    monitor-enter p0

    .line 1979
    :try_start_15
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_25

    .line 1978
    monitor-exit p0

    .line 1988
    return-void

    .line 1979
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1980
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1d

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1d

    .line 1981
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "android.permission.NFC"

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1d

    .line 1982
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1983
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LNfcServiceHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v3, v3, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1d

    .line 1978
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_54
    move-exception v2

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_54

    throw v2
.end method
