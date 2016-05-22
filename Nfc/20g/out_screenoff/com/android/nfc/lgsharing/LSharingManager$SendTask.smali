.class public Lcom/android/nfc/lgsharing/LSharingManager$SendTask;
.super Landroid/os/AsyncTask;
.source "LSharingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/lgsharing/LSharingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/lgsharing/LSharingManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/lgsharing/LSharingManager;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->this$0:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 202
    # getter for: Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z
    invoke-static {}, Lcom/android/nfc/lgsharing/LSharingManager;->access$0()Z

    move-result v3

    const-string v4, "LSharingManager"

    const-string v5, "doInBackground"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingClient;

    invoke-direct {v0}, Lcom/android/nfc/lgsharing/LSharingClient;-><init>()V

    .line 206
    .local v0, "client":Lcom/android/nfc/lgsharing/LSharingClient;
    :try_start_11
    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingClient;->connect()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_21

    .line 213
    iget-object v3, p0, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->this$0:Lcom/android/nfc/lgsharing/LSharingManager;

    invoke-virtual {v3}, Lcom/android/nfc/lgsharing/LSharingManager;->makeSendMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 215
    .local v2, "msg":Landroid/nfc/NdefMessage;
    :try_start_1a
    invoke-virtual {v0, v2}, Lcom/android/nfc/lgsharing/LSharingClient;->sendLGSharingMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_38

    .line 221
    :goto_1d
    invoke-virtual {v0}, Lcom/android/nfc/lgsharing/LSharingClient;->close()V

    .line 222
    .end local v2    # "msg":Landroid/nfc/NdefMessage;
    :goto_20
    return-object v6

    .line 207
    :catch_21
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "LSharingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    goto :goto_20

    .line 216
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "msg":Landroid/nfc/NdefMessage;
    :catch_38
    move-exception v1

    .line 217
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "LSharingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method
