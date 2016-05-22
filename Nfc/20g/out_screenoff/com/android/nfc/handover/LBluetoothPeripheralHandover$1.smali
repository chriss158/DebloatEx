.class Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;
.super Landroid/os/Handler;
.source "LBluetoothPeripheralHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LBluetoothPeripheralHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 59
    # getter for: Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received OOB message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    .line 74
    # getter for: Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Sequence : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_36
    return-void

    .line 62
    :pswitch_37
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v3, :cond_56

    .line 63
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 65
    :cond_56
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    # getter for: Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->access$1(Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_36

    .line 68
    :pswitch_61
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v3, :cond_80

    .line 69
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 71
    :cond_80
    iget-object v0, p0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    # getter for: Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->mLHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->access$1(Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_36

    .line 60
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_37
        :pswitch_61
    .end packed-switch
.end method
