.class public Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;
.super Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
.source "LHandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/LHandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LIncomingHandoverData"
.end annotation


# instance fields
.field public final mIsConflict:Z


# direct methods
.method public constructor <init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)V
    .registers 4
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "isConflict"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    .line 84
    iput-boolean p3, p0, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;->mIsConflict:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;Z)V
    .registers 5
    .param p1, "superData"    # Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .param p2, "isConflict"    # Z

    .prologue
    .line 88
    iget-object v0, p1, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    iget-object v1, p1, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/nfc/handover/LHandoverDataParser$LIncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)V

    .line 89
    return-void
.end method
