.class Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;
.super Landroid/os/Handler;
.source "LNfcIndicatorIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcIndicatorIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LNfcServiceIconHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcIndicatorIcon;


# direct methods
.method private constructor <init>(Lcom/android/nfc/LNfcIndicatorIcon;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;->this$0:Lcom/android/nfc/LNfcIndicatorIcon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/LNfcIndicatorIcon;Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;)V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;-><init>(Lcom/android/nfc/LNfcIndicatorIcon;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 111
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 112
    .local v1, "icon":I
    const/4 v4, 0x0

    .line 114
    .local v4, "talkback":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 166
    :goto_9
    return-void

    .line 118
    :cond_a
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_118

    .line 157
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$2()Z

    move-result v5

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$3()Ljava/lang/String;

    move-result-object v6

    const-string v7, "LNfcServiceIconHandler::Unknown message received"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_1c
    :pswitch_1c
    const-string v5, "statusbar"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 161
    .local v3, "sb":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_111

    .line 162
    const-string v5, "nfc"

    invoke-virtual {v3, v5, v1, v9, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_9

    .line 121
    .end local v3    # "sb":Landroid/app/StatusBarManager;
    :pswitch_2c
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->NFC_ICON_MAP:Ljava/util/Map;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$0()Ljava/util/Map;

    move-result-object v5

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$1()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v6

    iget-object v6, v6, Lcom/lge/nfcconfig/NfcConfigure;->mIndicatorType:Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 122
    .local v2, "icon_map":[I
    if-eqz v2, :cond_42

    array-length v5, v2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_50

    .line 123
    :cond_42
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$2()Z

    move-result v5

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$3()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid icon map"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 126
    :cond_50
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryEnable()Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 127
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pEnable()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 128
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$2()Z

    move-result v5

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$3()Ljava/lang/String;

    move-result-object v6

    const-string v7, "P2PMODE icon Enable"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v5, 0x2

    aget v1, v2, v5

    .line 134
    :goto_72
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$1()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v5

    iget-object v5, v5, Lcom/lge/nfcconfig/NfcConfigure;->mTargetCountry:Ljava/lang/String;

    const-string v6, "KR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 135
    const v5, 0x7f08005a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    goto :goto_1c

    .line 131
    :cond_88
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$2()Z

    move-result v5

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$3()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RWMODE icon Enable"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v5, 0x1

    aget v1, v2, v5

    goto :goto_72

    .line 137
    :cond_99
    const v5, 0x7f080059

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    goto/16 :goto_1c

    :cond_a2
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 140
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$2()Z

    move-result v5

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$3()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Card Mode icon Enable"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 141
    aget v1, v2, v9

    .line 142
    const v5, 0x7f080058

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    goto/16 :goto_1c

    .line 144
    :cond_c6
    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$2()Z

    move-result v5

    # getter for: Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/LNfcIndicatorIcon;->access$3()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Nfc State : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 146
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 147
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getDiscoveryState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 148
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getP2pState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    .line 152
    goto/16 :goto_1c

    .line 164
    .end local v2    # "icon_map":[I
    .restart local v3    # "sb":Landroid/app/StatusBarManager;
    :cond_111
    const-string v5, "nfc"

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 118
    :pswitch_data_118
    .packed-switch 0x1e
        :pswitch_2c
        :pswitch_1c
    .end packed-switch
.end method
