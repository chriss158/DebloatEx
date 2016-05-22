.class public Lcom/android/nfc/LNfcVariable;
.super Ljava/lang/Object;
.source "LNfcVariable.java"


# static fields
.field private static CONFIG:Lcom/lge/nfcconfig/NfcConfigure; = null

.field private static DBG:Z = false

.field private static INSTANCE:Lcom/android/nfc/LNfcVariable; = null

.field public static final NFC_CARD:I = 0x2

.field public static final NFC_DISCOVERY:I = 0x4

.field public static final NFC_P2P:I = 0x8

.field public static final NFC_SYS:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBootComplete:Z

.field private mCardOn:Z

.field private mCardState:I

.field private mDiscoveryOn:Z

.field private mDiscoveryState:I

.field private mIsWirelessChargingEnabled:Z

.field private mP2pOn:Z

.field private mP2pState:I

.field private mSysState:I

.field private mWirelessChargingState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-string v0, "LNfcVariable"

    sput-object v0, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    .line 24
    new-instance v0, Lcom/android/nfc/LNfcVariable;

    invoke-direct {v0}, Lcom/android/nfc/LNfcVariable;-><init>()V

    sput-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    .line 41
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcVariable;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    .line 44
    const/16 v0, 0x29

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    .line 45
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    .line 46
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    .line 47
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    .line 48
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    .line 49
    return-void
.end method

.method public static changeNFCWirelessChargingstatus(I)Z
    .registers 10
    .param p0, "status"    # I

    .prologue
    const/16 v8, 0x33

    const/16 v7, 0x36

    const/16 v6, 0x34

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    sget-object v3, Lcom/android/nfc/LNfcVariable;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-boolean v3, v3, Lcom/lge/nfcconfig/NfcConfigure;->mWCScenarioEnable:Z

    if-nez v3, :cond_f

    .line 200
    :cond_e
    :goto_e
    return v1

    .line 166
    :cond_f
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getWirelessChargingState()I

    move-result v0

    .line 168
    .local v0, "mWCState":I
    packed-switch p0, :pswitch_data_60

    goto :goto_e

    .line 170
    :pswitch_17
    sget-boolean v3, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    const-string v5, "STATE_WC_OFF "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 171
    if-ne v0, v7, :cond_e

    .line 172
    invoke-static {v8}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 173
    goto :goto_e

    .line 177
    :pswitch_27
    sget-boolean v3, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    const-string v5, "STATE_TURNING_WC_ON "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eq v0, v6, :cond_e

    .line 179
    const/16 v3, 0x35

    if-eq v0, v3, :cond_e

    .line 182
    invoke-static {v6}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 183
    goto :goto_e

    .line 185
    :pswitch_3b
    sget-boolean v3, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    const-string v5, "STATE_WC_ON "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 186
    if-ne v0, v6, :cond_e

    .line 187
    const/16 v1, 0x35

    invoke-static {v1}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 188
    goto :goto_e

    .line 192
    :pswitch_4d
    sget-boolean v3, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v4, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    const-string v5, "STATE_TURNING_WC_OFF "

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eq v0, v7, :cond_e

    .line 194
    if-eq v0, v8, :cond_e

    .line 197
    invoke-static {v7}, Lcom/android/nfc/LNfcVariable;->setWirelessChargingState(I)V

    move v1, v2

    .line 198
    goto :goto_e

    .line 168
    nop

    :pswitch_data_60
    .packed-switch 0x33
        :pswitch_17
        :pswitch_27
        :pswitch_3b
        :pswitch_4d
    .end packed-switch
.end method

.method public static getBootComplete()Z
    .registers 4

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mBootComplete : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    return v0
.end method

.method public static getCardEnable()Z
    .registers 2

    .prologue
    .line 97
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getCardOn()Z
    .registers 4

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCardOn : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    return v0
.end method

.method public static getCardState()I
    .registers 4

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCardState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mCardState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    return v0
.end method

.method public static getDiscoveryEnable()Z
    .registers 2

    .prologue
    .line 100
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getDiscoveryOn()Z
    .registers 4

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDiscoveryOn : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    return v0
.end method

.method public static getDiscoveryState()I
    .registers 4

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDiscoveryState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    return v0
.end method

.method public static getInstance()Lcom/android/nfc/LNfcVariable;
    .registers 1

    .prologue
    .line 205
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    return-object v0
.end method

.method public static getP2pEnable()Z
    .registers 2

    .prologue
    .line 103
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getP2pOn()Z
    .registers 4

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mP2pOn : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    return v0
.end method

.method public static getP2pState()I
    .registers 4

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mP2pState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    return v0
.end method

.method public static getSysEnable()Z
    .registers 2

    .prologue
    .line 94
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static getSysState()I
    .registers 4

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSysState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mSysState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    return v0
.end method

.method public static getWirelessChargingEnable()Z
    .registers 4

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsWirelessChargingEnabled : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v3, v3, Lcom/android/nfc/LNfcVariable;->mIsWirelessChargingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v0, v0, Lcom/android/nfc/LNfcVariable;->mIsWirelessChargingEnabled:Z

    return v0
.end method

.method public static getWirelessChargingState()I
    .registers 4

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWirelessChargingState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v3, v3, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget v0, v0, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    return v0
.end method

.method public static setBootComplete()V
    .registers 3

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    const-string v2, "setBootComplete is true"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/LNfcVariable;->mBootComplete:Z

    .line 144
    return-void
.end method

.method public static setCardOn(Z)Z
    .registers 6
    .param p0, "isEnable"    # Z

    .prologue
    .line 116
    sget-boolean v1, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v2, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setCardOn : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    xor-int v0, p0, v1

    .line 118
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v1, Lcom/android/nfc/LNfcVariable;->mCardOn:Z

    .line 119
    return v0
.end method

.method public static setCardState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCardState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mCardState:I

    .line 58
    return-void
.end method

.method public static setDiscoveryOn(Z)Z
    .registers 6
    .param p0, "isEnable"    # Z

    .prologue
    .line 123
    sget-boolean v1, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v2, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setDiscoveryOn : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    xor-int v0, p0, v1

    .line 125
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v1, Lcom/android/nfc/LNfcVariable;->mDiscoveryOn:Z

    .line 126
    return v0
.end method

.method public static setDiscoveryState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDiscoveryState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mDiscoveryState:I

    .line 62
    return-void
.end method

.method public static setP2pOn(Z)Z
    .registers 6
    .param p0, "isEnable"    # Z

    .prologue
    .line 130
    sget-boolean v1, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v2, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setP2pOn : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v4, v4, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iget-boolean v1, v1, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    xor-int v0, p0, v1

    .line 132
    .local v0, "ret":Z
    sget-object v1, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v1, Lcom/android/nfc/LNfcVariable;->mP2pOn:Z

    .line 133
    return v0
.end method

.method public static setP2pState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mP2pState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mP2pState:I

    .line 66
    return-void
.end method

.method public static setSysState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSysState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mSysState:I

    .line 54
    return-void
.end method

.method public static setWirelessChargingEnable(Z)V
    .registers 5
    .param p0, "isEnable"    # Z

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mIsWirelessChargingEnabled : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput-boolean p0, v0, Lcom/android/nfc/LNfcVariable;->mIsWirelessChargingEnabled:Z

    .line 139
    return-void
.end method

.method public static setWirelessChargingState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/nfc/LNfcVariable;->DBG:Z

    sget-object v1, Lcom/android/nfc/LNfcVariable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mWirelessChargingState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/android/nfc/LNfcVariable;->INSTANCE:Lcom/android/nfc/LNfcVariable;

    iput p0, v0, Lcom/android/nfc/LNfcVariable;->mWirelessChargingState:I

    .line 70
    return-void
.end method
