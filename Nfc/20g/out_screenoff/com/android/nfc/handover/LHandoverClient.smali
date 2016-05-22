.class public Lcom/android/nfc/handover/LHandoverClient;
.super Lcom/android/nfc/handover/HandoverClient;
.source "LHandoverClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LHandoverClient"


# instance fields
.field mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/LHandoverDataParser;)V
    .registers 2
    .param p1, "handoverDataParser"    # Lcom/android/nfc/handover/LHandoverDataParser;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/nfc/handover/LHandoverClient;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    .line 24
    return-void
.end method


# virtual methods
.method checkHandoverCollision(Landroid/nfc/NdefMessage;)Z
    .registers 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const-string v0, "LHandoverClient"

    const-string v1, "checkHandoverClientCollision"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverClient;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    if-eqz v0, :cond_12

    .line 30
    iget-object v0, p0, Lcom/android/nfc/handover/LHandoverClient;->mLHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    invoke-virtual {v0}, Lcom/android/nfc/handover/LHandoverDataParser;->checkHandoverClientCollision()Z

    move-result v0

    .line 32
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Lcom/android/nfc/handover/HandoverClient;->checkHandoverCollision(Landroid/nfc/NdefMessage;)Z

    move-result v0

    goto :goto_11
.end method
