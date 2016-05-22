.class public Lcom/android/nfc/handover/LBluetoothPeripheralHandover;
.super Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.source "LBluetoothPeripheralHandover.java"


# static fields
.field public static final HANDOVER_CONNECT_DELAY:I = 0x5dc

.field public static final MSG_A2DP_CONNECT:I = 0x2

.field public static final MSG_HFP_CONNECT:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mLHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "LBluetoothHeadsetHandover"

    sput-object v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transport"    # I
    .param p5, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    .line 56
    new-instance v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;-><init>(Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method complete(Z)V
    .registers 4
    .param p1, "connected"    # Z

    .prologue
    const/4 v1, 0x1

    .line 108
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v1, :cond_a

    .line 109
    :cond_9
    const/4 p1, 0x1

    .line 112
    :cond_a
    invoke-super {p0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 113
    return-void
.end method

.method nextStepConnect()V
    .registers 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    .line 84
    const-string v0, "PopupDialogType"

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 85
    iget v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 86
    invoke-super {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    .line 88
    :cond_15
    return-void
.end method

.method requestPairConfirmation()V
    .registers 3

    .prologue
    .line 98
    const-string v0, "PopupDialogType"

    .line 99
    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 98
    invoke-static {v0, v1}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 99
    if-eqz v0, :cond_b

    .line 103
    :goto_a
    return-void

    .line 102
    :cond_b
    invoke-super {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    goto :goto_a
.end method

.method public sendDelayMessage(I)V
    .registers 6
    .param p1, "msg"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    return-void
.end method

.method startTheMusic()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method
