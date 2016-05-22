.class Lcom/android/nfc/LNfcService$LEnableDisableTask;
.super Lcom/android/nfc/NfcService$EnableDisableTask;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LEnableDisableTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 5

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    .line 633
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 634
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newEnableDisableTask : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method


# virtual methods
.method applyRoutingWrapper(Z)Z
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/LNfcService;->applyRouting(Z)V

    .line 971
    const/4 v0, 0x1

    return v0
.end method

.method bootInternal()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 776
    const-string v1, "LNfcService"

    const-string v4, "bootInternal"

    invoke-static {v1, v4}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v1, "LNfcService"

    const-string v4, "checking on firmware download"

    invoke-static {v1, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "airplane_override"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 781
    .local v0, "airplaneOverride":Z
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getBootComplete()Z

    move-result v1

    if-nez v1, :cond_28

    .line 782
    const-string v1, "LNfcService"

    const-string v2, "Not Ready NfcService"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_27
    :goto_27
    return-void

    .line 787
    :cond_28
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "first_boot"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 788
    const-string v1, "LNfcService"

    const-string v4, "First Boot"

    invoke-static {v1, v4}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "first_boot"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 790
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 794
    :cond_4b
    invoke-static {}, Lcom/android/nfc/LNfcCommon;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 795
    const-string v1, "LNfcService"

    const-string v2, "Factory Mode. Skip BootInternal"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 800
    :cond_59
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v1, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-nez v1, :cond_67

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-eqz v1, :cond_f9

    .line 801
    :cond_67
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_77

    if-eqz v0, :cond_b9

    .line 802
    :cond_77
    const-string v1, "LNfcService"

    const-string v4, "NFC is on. Doing normal stuff"

    invoke-static {v1, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-nez v1, :cond_b3

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-nez v1, :cond_b3

    move v1, v2

    .line 805
    :goto_8e
    sget-object v4, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v4

    if-nez v4, :cond_b5

    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-nez v4, :cond_b5

    move v4, v2

    .line 806
    :goto_9e
    sget-object v5, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v5

    if-nez v5, :cond_b7

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v5, v5, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-nez v5, :cond_b7

    .line 803
    :goto_ae
    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    goto/16 :goto_27

    :cond_b3
    move v1, v3

    .line 804
    goto :goto_8e

    :cond_b5
    move v4, v3

    .line 805
    goto :goto_9e

    :cond_b7
    move v2, v3

    .line 806
    goto :goto_ae

    .line 809
    :cond_b9
    const-string v1, "LNfcService"

    const-string v2, "NFC is on. But Airplane mode enable"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    .line 811
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 825
    :goto_ca
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mTargetOperator:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 826
    const-string v1, "LNfcService"

    const-string v2, "[KR_SKT] NFC is off. mDeviceHost init /deinit"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->initialize()Z

    .line 828
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    goto/16 :goto_27

    .line 816
    :cond_f9
    const-string v1, "LNfcService"

    const-string v2, "NFC is off. Checking firmware version"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    .line 818
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 821
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    goto :goto_ca
.end method

.method varargs checkCurrentState([Ljava/lang/Integer;)Z
    .registers 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 727
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v1

    packed-switch v1, :pswitch_data_ce

    .line 738
    :pswitch_8
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v1

    packed-switch v1, :pswitch_data_d8

    .line 749
    :pswitch_f
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v1

    packed-switch v1, :pswitch_data_e2

    .line 760
    :pswitch_16
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v1

    packed-switch v1, :pswitch_data_ec

    .line 771
    :pswitch_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    .line 730
    :pswitch_1f
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing EnableDisable task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 731
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSysState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 732
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 741
    :pswitch_4a
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing EnableDisable task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCardState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 743
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 752
    :pswitch_75
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing EnableDisable task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 753
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDiscoveryState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 754
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 752
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 763
    :pswitch_a1
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing EnableDisable task "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mP2pState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 765
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 727
    nop

    :pswitch_data_ce
    .packed-switch 0x2a
        :pswitch_1f
        :pswitch_8
        :pswitch_1f
    .end packed-switch

    .line 738
    :pswitch_data_d8
    .packed-switch 0xc
        :pswitch_4a
        :pswitch_f
        :pswitch_4a
    .end packed-switch

    .line 749
    :pswitch_data_e2
    .packed-switch 0x16
        :pswitch_75
        :pswitch_16
        :pswitch_75
    .end packed-switch

    .line 760
    :pswitch_data_ec
    .packed-switch 0x20
        :pswitch_a1
        :pswitch_1d
        :pswitch_a1
    .end packed-switch
.end method

.method checkSecureElementConfiguration()V
    .registers 1

    .prologue
    .line 773
    return-void
.end method

.method disableInternal()Z
    .registers 8

    .prologue
    const/16 v6, 0x29

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 980
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v4

    if-ne v4, v6, :cond_b

    .line 1024
    :goto_a
    return v2

    .line 986
    :cond_b
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 987
    const-string v5, "device_provisioned"

    .line 986
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_53

    move v0, v2

    .line 989
    .local v0, "inProvisionMode":Z
    :goto_18
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-eqz v4, :cond_55

    if-eqz v0, :cond_55

    .line 990
    sget-boolean v3, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v4, "LNfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "disableInternal - mRequireForceEnable : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v6, v6, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", inProvisionMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v6, v6, Lcom/android/nfc/LNfcService;->mInProvisionMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .end local v0    # "inProvisionMode":Z
    :cond_53
    move v0, v3

    .line 986
    goto :goto_18

    .line 995
    .restart local v0    # "inProvisionMode":Z
    :cond_55
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v3, v4, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    .line 996
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iput-boolean v3, v4, Lcom/android/nfc/LNfcService;->mRequireForceP2PEnable:Z

    .line 998
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    .line 1001
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/nfc/LNfcService;->mState:I

    .line 1002
    invoke-super {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    move-result v1

    .line 1004
    .local v1, "result":Z
    const-string v4, "LNfcService"

    const-string v5, "disableInternal"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iput v3, v4, Lcom/android/nfc/LNfcService;->mPreScreenState:I

    .line 1009
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v5, "nfc_on"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/nfc/LNfcService;->sendUnifiedSettingIntent(Ljava/lang/String;II)V

    .line 1010
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_8c

    .line 1011
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v5, "android_beam_on"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/nfc/LNfcService;->sendUnifiedSettingIntent(Ljava/lang/String;II)V

    .line 1014
    :cond_8c
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setCardOn(Z)Z

    .line 1015
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setDiscoveryOn(Z)Z

    .line 1016
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setP2pOn(Z)Z

    .line 1018
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 1019
    const/16 v2, 0x15

    invoke-static {v2}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 1020
    const/16 v2, 0x1f

    invoke-static {v2}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 1022
    invoke-virtual {p0, v6}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    move v2, v1

    .line 1024
    goto/16 :goto_a
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 639
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doInBackground : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v3, v3, Lcom/android/nfc/LNfcService;->mState:I

    packed-switch v3, :pswitch_data_10e

    .line 649
    :pswitch_26
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->checkCurrentState([Ljava/lang/Integer;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 712
    :goto_2c
    return-object v6

    .line 644
    :pswitch_2d
    const-string v1, "LNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Processing EnableDisable task "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 645
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v3, v3, Lcom/android/nfc/LNfcService;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 660
    :cond_52
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 662
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_118

    .line 710
    :cond_5e
    :goto_5e
    :pswitch_5e
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 711
    sget-boolean v1, Lcom/android/nfc/LNfcService;->DBG:Z

    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doInBackground exit : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 664
    :pswitch_7e
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    goto :goto_5e

    .line 667
    :pswitch_82
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    goto :goto_5e

    .line 670
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->bootInternal()V

    goto :goto_5e

    .line 674
    :pswitch_8a
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "nfc_fwdl_try_cnt"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 675
    .local v0, "mRetryCount":I
    const-string v1, "LNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FWDL retry count : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    if-ge v0, v7, :cond_5e

    .line 678
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "nfc_fwdl_try_cnt"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 679
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 681
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->downloadFirmware()V

    .line 683
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->setBootComplete()V

    .line 686
    sget-object v1, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v1, v1, Lcom/lge/nfcconfig/NfcConfigure;->mSIMSwapEnable:Z

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-eqz v1, :cond_5e

    .line 687
    :cond_ce
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->bootInternal()V

    goto :goto_5e

    .line 693
    .end local v0    # "mRetryCount":I
    :pswitch_d2
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_e1

    :goto_dc
    invoke-virtual {p0, v1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enablePowerSavingMode(Z)V

    goto/16 :goto_5e

    :cond_e1
    move v1, v2

    goto :goto_dc

    .line 696
    :pswitch_e3
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableSavedSetting()V

    goto/16 :goto_5e

    .line 699
    :pswitch_e8
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    .line 700
    const/16 v1, 0x35

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->changeNFCWirelessChargingstatus(I)Z

    goto/16 :goto_5e

    .line 703
    :pswitch_f2
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_109

    move v3, v1

    :goto_fb
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_10b

    :goto_104
    invoke-virtual {p0, v3, v1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcPowerStatus(ZZ)V

    goto/16 :goto_5e

    :cond_109
    move v3, v2

    goto :goto_fb

    :cond_10b
    move v1, v2

    goto :goto_104

    .line 641
    nop

    :pswitch_data_10e
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_26
        :pswitch_2d
    .end packed-switch

    .line 662
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_82
        :pswitch_86
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_8a
        :pswitch_e3
        :pswitch_d2
        :pswitch_d2
        :pswitch_5e
        :pswitch_e8
        :pswitch_f2
    .end packed-switch
.end method

.method downloadFirmware()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1068
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_fwdl_try_cnt"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1069
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1071
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PREF_FWDL_TRY_CNT reset : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "nfc_fwdl_try_cnt"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-void
.end method

.method enableInternal()Z
    .registers 2

    .prologue
    .line 839
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(Z)Z

    move-result v0

    return v0
.end method

.method enableInternal(Z)Z
    .registers 6
    .param p1, "isApplyRoutingForce"    # Z

    .prologue
    .line 843
    .line 844
    sget-object v0, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v0

    .line 845
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    .line 846
    sget-object v2, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v2

    .line 843
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    move-result v0

    return v0
.end method

.method enableInternal(ZZZZ)Z
    .registers 14
    .param p1, "isApplyRoutingForce"    # Z
    .param p2, "cardOn"    # Z
    .param p3, "discoveryOn"    # Z
    .param p4, "p2pOn"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, "cardModeChange":Z
    const/4 v1, 0x0

    .line 854
    .local v1, "rwModeChange":Z
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "nfc_fwdl_try_cnt"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_1f

    .line 855
    const-string v4, "LNfcService"

    const-string v5, "FWDL tried over max cnt, return"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v4}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 965
    :cond_1e
    :goto_1e
    return v3

    .line 860
    :cond_1f
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v5

    if-nez v5, :cond_c3

    .line 861
    const-string v5, "LNfcService"

    const-string v6, "enableInternal"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x1

    .line 863
    const/4 v1, 0x1

    .line 864
    if-eqz p3, :cond_34

    .line 865
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 867
    :cond_34
    const/16 v5, 0x2a

    invoke-virtual {p0, v5}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V

    .line 869
    new-instance v2, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v6, "enableInternal"

    const v7, 0x15f90

    invoke-direct {v2, v5, v6, v7}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 870
    .local v2, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 872
    :try_start_48
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 875
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->setPowerConfig()V
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_9e

    .line 879
    :try_start_54
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v5

    if-nez v5, :cond_a3

    .line 880
    const-string v4, "LNfcService"

    const-string v5, "Error enabling NFC"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 882
    const/16 v4, 0x29

    invoke-virtual {p0, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6e} :catch_79
    .catchall {:try_start_54 .. :try_end_6e} :catchall_95

    .line 891
    :try_start_6e
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_9e

    .line 898
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    goto :goto_1e

    .line 886
    :catch_79
    move-exception v4

    :try_start_7a
    const-string v4, "LNfcService"

    const-string v5, "Error enabling NFC"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateState(I)V

    .line 888
    const/16 v4, 0x29

    invoke-virtual {p0, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateSystemState(I)V
    :try_end_8a
    .catchall {:try_start_7a .. :try_end_8a} :catchall_95

    .line 891
    :try_start_8a
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_9e

    .line 898
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    goto :goto_1e

    .line 890
    :catchall_95
    move-exception v3

    .line 891
    :try_start_96
    iget-object v4, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v4, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 892
    throw v3
    :try_end_9e
    .catchall {:try_start_96 .. :try_end_9e} :catchall_9e

    .line 897
    :catchall_9e
    move-exception v3

    .line 898
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 899
    throw v3

    .line 891
    :cond_a3
    :try_start_a3
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 895
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->setPowerConfig()V
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_9e

    .line 898
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 901
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v5}, Lcom/android/nfc/LNfcService;->initSoundPool()V

    .line 904
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v6, "nfc_on"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/nfc/LNfcService;->sendUnifiedSettingIntent(Ljava/lang/String;II)V

    .line 906
    const/16 v5, 0x2b

    invoke-static {v5}, Lcom/android/nfc/LNfcVariable;->setSysState(I)V

    .line 910
    .end local v2    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_c3
    invoke-static {p2}, Lcom/android/nfc/LNfcVariable;->setCardOn(Z)Z

    move-result v5

    if-nez v5, :cond_155

    if-nez v0, :cond_155

    move v0, v3

    .line 911
    :goto_cc
    invoke-static {p3}, Lcom/android/nfc/LNfcVariable;->setDiscoveryOn(Z)Z

    move-result v5

    if-nez v5, :cond_158

    if-nez v1, :cond_158

    move v1, v3

    .line 912
    :goto_d5
    invoke-static {p4}, Lcom/android/nfc/LNfcVariable;->setP2pOn(Z)Z

    .line 915
    if-eqz p4, :cond_15b

    .line 916
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v6, "android_beam_on"

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/nfc/LNfcService;->sendUnifiedSettingIntent(Ljava/lang/String;II)V

    .line 921
    :cond_e1
    :goto_e1
    if-eqz v0, :cond_e6

    .line 922
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->checkSecureElementConfiguration()V

    .line 925
    :cond_e6
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 926
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v5

    .line 927
    :try_start_ef
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 929
    iget-object v6, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v6, v6, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pOn()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 926
    monitor-exit v5
    :try_end_103
    .catchall {:try_start_ef .. :try_end_103} :catchall_168

    .line 939
    :goto_103
    if-nez v0, :cond_107

    if-eqz v1, :cond_10d

    .line 942
    :cond_107
    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->applyRoutingWrapper(Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 948
    :cond_10d
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcService;->mIsHceCapable:Z

    if-eqz v3, :cond_11a

    if-eqz v0, :cond_11a

    .line 951
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3}, Lcom/android/nfc/LNfcService;->onNfcEnabled()V

    .line 955
    :cond_11a
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardOn()Z

    move-result v3

    if-eqz v3, :cond_173

    const/16 v3, 0xd

    :goto_122
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 956
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v3

    if-eqz v3, :cond_176

    const/16 v3, 0x17

    :goto_12d
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 957
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pOn()Z

    move-result v3

    if-eqz v3, :cond_179

    const/16 v3, 0x21

    :goto_138
    invoke-static {v3}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 959
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryOn()Z

    move-result v3

    if-eqz v3, :cond_17c

    const/4 v3, 0x3

    :goto_142
    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 960
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 961
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 963
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3}, Lcom/android/nfc/LNfcService;->checkDisable()V

    move v3, v4

    .line 965
    goto/16 :goto_1e

    :cond_155
    move v0, v4

    .line 910
    goto/16 :goto_cc

    :cond_158
    move v1, v4

    .line 911
    goto/16 :goto_d5

    .line 917
    :cond_15b
    if-nez p4, :cond_e1

    if-nez v1, :cond_e1

    .line 918
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    const-string v6, "android_beam_on"

    invoke-virtual {v5, v6, v4, v3}, Lcom/android/nfc/LNfcService;->sendUnifiedSettingIntent(Ljava/lang/String;II)V

    goto/16 :goto_e1

    .line 926
    :catchall_168
    move-exception v3

    :try_start_169
    monitor-exit v5
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw v3

    .line 933
    :cond_16b
    iget-object v5, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v5, v5, Lcom/android/nfc/LNfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v5, v3, v3}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    goto :goto_103

    .line 955
    :cond_173
    const/16 v3, 0xb

    goto :goto_122

    .line 956
    :cond_176
    const/16 v3, 0x15

    goto :goto_12d

    .line 957
    :cond_179
    const/16 v3, 0x1f

    goto :goto_138

    :cond_17c
    move v3, v4

    .line 959
    goto :goto_142
.end method

.method enablePowerSavingMode(Z)V
    .registers 8
    .param p1, "isRestoreMode"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1040
    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    invoke-virtual {v3, v0}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1041
    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v3}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 1042
    :cond_18
    sget-object v3, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mPowerSaveType:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    sget-object v4, Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;->rwp2p:Lcom/lge/nfcconfig/NfcConfigure$PowerSaveScenarioList;

    if-ne v3, v4, :cond_5d

    .line 1043
    sget-object v3, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1045
    .local v0, "cardOn":Z
    :goto_29
    const-string v3, "LNfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NFC system is initialized. Doing normal stuff - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(ZZZZ)Z

    .line 1051
    .end local v0    # "cardOn":Z
    :goto_40
    if-eqz p1, :cond_5c

    .line 1054
    const/16 v2, 0x33

    invoke-static {v2}, Lcom/android/nfc/LNfcVariable;->changeNFCWirelessChargingstatus(I)Z

    move-result v1

    .line 1055
    .local v1, "result":Z
    const-string v2, "LNfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chage WirelessCharging Status : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .end local v1    # "result":Z
    :cond_5c
    return-void

    :cond_5d
    move v0, v2

    .line 1042
    goto :goto_29

    .line 1048
    :cond_5f
    const-string v2, "LNfcService"

    const-string v3, "NFC system is NOT initialized."

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method enableSavedSetting()V
    .registers 5

    .prologue
    .line 1029
    sget-object v1, Lcom/android/nfc/LNfcService;->mStatusMngr:Lcom/android/nfc/LNfcStatusManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/LNfcStatusManager;->allowNfcStatus(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1030
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcService;->mIsAirplaneSensitive:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1031
    :cond_17
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal()Z

    .line 1034
    :cond_1a
    const/16 v1, 0x33

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->changeNFCWirelessChargingstatus(I)Z

    move-result v0

    .line 1035
    .local v0, "result":Z
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chage WirelessCharging Status : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method onCardEmulationModeCallback(ZI)V
    .registers 4
    .param p1, "callbackEnable"    # Z
    .param p2, "status"    # I

    .prologue
    .line 1190
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_f

    .line 1191
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0, p2}, Lcom/android/nfc/LGsmaAPIService;->onCardEmulationModeCallback(I)V

    .line 1193
    :cond_f
    return-void
.end method

.method onNfcControllerCallback(ZZ)V
    .registers 4
    .param p1, "callbackEnable"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 1184
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v0, :cond_f

    .line 1185
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0, p2}, Lcom/android/nfc/LGsmaAPIService;->onNfcControllerCallback(Z)V

    .line 1187
    :cond_f
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 723
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->onPostExecute(Ljava/lang/Object;)V

    .line 724
    const-string v0, "LNfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostExecute : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 717
    invoke-super {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->onPreExecute()V

    .line 718
    const-string v0, "LNfcService"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method updateCardModeState(I)V
    .registers 5
    .param p1, "newState"    # I

    .prologue
    .line 1106
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1107
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 1108
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1109
    monitor-exit v1

    .line 1121
    :goto_f
    return-void

    .line 1111
    :cond_10
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setCardState(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1115
    const/16 v0, 0xd

    if-ne p1, v0, :cond_27

    .line 1116
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1117
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 1119
    :cond_27
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 1106
    monitor-exit v1

    goto :goto_f

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method updateDiscoveryModeState(I)V
    .registers 5
    .param p1, "newState"    # I

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1125
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 1126
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1127
    monitor-exit v1

    .line 1139
    :goto_f
    return-void

    .line 1129
    :cond_10
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setDiscoveryState(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1133
    const/16 v0, 0x17

    if-ne p1, v0, :cond_27

    .line 1134
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1135
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 1137
    :cond_27
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 1124
    monitor-exit v1

    goto :goto_f

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method updateNfcAdapterState(IZ)V
    .registers 7
    .param p1, "newState"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1159
    if-nez p2, :cond_9

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v1, v1, Lcom/android/nfc/LNfcService;->mState:I

    if-ne p1, v1, :cond_9

    .line 1169
    :goto_8
    return-void

    .line 1162
    :cond_9
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateNfcAdapterState : (Sys : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Card : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1163
    const-string v3, ", Discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", P2P : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1162
    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iput p1, v1, Lcom/android/nfc/LNfcService;->mState:I

    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1167
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget v2, v2, Lcom/android/nfc/LNfcService;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1168
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_8
.end method

.method updateNfcIndicator()V
    .registers 3

    .prologue
    .line 1173
    sget-object v0, Lcom/android/nfc/LNfcService;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mRemoveIconWhenLockScreen:Z

    if-eqz v0, :cond_21

    .line 1174
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    .line 1175
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcService;->mRequireForceEnable:Z

    if-nez v0, :cond_21

    .line 1176
    sget-object v0, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->removeNfcIndicatorIcon(Landroid/content/Context;)V

    .line 1181
    :goto_20
    return-void

    .line 1178
    :cond_21
    sget-object v0, Lcom/android/nfc/LNfcService;->mIndicatorIcon:Lcom/android/nfc/LNfcIndicatorIcon;

    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v1, Lcom/android/nfc/LNfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->updateNfcIndicatorIcon(Landroid/content/Context;)V

    goto :goto_20
.end method

.method updateNfcPowerStatus(ZZ)V
    .registers 5
    .param p1, "isRequireEnable"    # Z
    .param p2, "callbackEnable"    # Z

    .prologue
    .line 1076
    if-eqz p1, :cond_b

    .line 1077
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->enableInternal(Z)Z

    move-result v0

    .line 1078
    .local v0, "ret":Z
    invoke-virtual {p0, p2, v0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->onNfcControllerCallback(ZZ)V

    .line 1085
    .end local v0    # "ret":Z
    :goto_a
    return-void

    .line 1081
    :cond_b
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcService;->manageShutdown()V

    .line 1083
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->disableInternal()Z

    goto :goto_a
.end method

.method updateP2pModeState(I)V
    .registers 5
    .param p1, "newState"    # I

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1143
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 1144
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1145
    monitor-exit v1

    .line 1156
    :goto_f
    return-void

    .line 1147
    :cond_10
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setP2pState(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1151
    const/16 v0, 0x21

    if-ne p1, v0, :cond_21

    .line 1152
    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 1154
    :cond_21
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 1142
    monitor-exit v1

    goto :goto_f

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method updateSystemState(I)V
    .registers 5
    .param p1, "newState"    # I

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    monitor-enter v1

    .line 1090
    :try_start_3
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 1091
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1092
    monitor-exit v1

    .line 1103
    :goto_f
    return-void

    .line 1094
    :cond_10
    invoke-static {p1}, Lcom/android/nfc/LNfcVariable;->setSysState(I)V

    .line 1096
    const/16 v0, 0x29

    if-ne p1, v0, :cond_1c

    .line 1097
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcAdapterState(IZ)V

    .line 1099
    :cond_1c
    iget-object v0, p0, Lcom/android/nfc/LNfcService$LEnableDisableTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-virtual {v0}, Lcom/android/nfc/LNfcService;->sendNfcAddonStateChangeIntent()V

    .line 1101
    invoke-virtual {p0}, Lcom/android/nfc/LNfcService$LEnableDisableTask;->updateNfcIndicator()V

    .line 1089
    monitor-exit v1

    goto :goto_f

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method
