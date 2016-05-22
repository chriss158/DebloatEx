.class public Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
.super Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
.source "LHandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LHandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LBluetoothHandoverData"
.end annotation


# instance fields
.field public powerState:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->powerState:Z

    .line 92
    return-void
.end method

.method public static parse(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    .registers 3
    .param p0, "superData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    .line 96
    new-instance v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;

    invoke-direct {v0}, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;-><init>()V

    .line 98
    .local v0, "data":Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;
    if-eqz p0, :cond_1b

    .line 99
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    iput-boolean v1, v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->carrierActivating:Z

    .line 100
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iput-object v1, v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 101
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->name:Ljava/lang/String;

    .line 102
    iget v1, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    iput v1, v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->transport:I

    .line 103
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    iput-boolean v1, v0, Lcom/android/nfc/handover/LHandoverDataParser$LBluetoothHandoverData;->valid:Z

    .line 106
    :cond_1b
    return-object v0
.end method
