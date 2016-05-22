.class Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 4
    .param p2, "sock"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 67
    const-string v0, "NdefPushServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 69
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 73
    const-string v6, "NdefPushServer"

    const-string v7, "starting connection thread"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x400

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v4, v6, [B

    .line 78
    .local v4, "partial":[B
    const/4 v1, 0x0

    .line 81
    .local v1, "connectionBroken":Z
    :goto_13
    if-eqz v1, :cond_55

    .line 99
    :goto_15
    new-instance v3, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>([B)V

    .line 100
    .local v3, "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    const-string v6, "NdefPushServer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "got message "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v6, v6, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-virtual {v3}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->getImmediate()Landroid/nfc/NdefMessage;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/nfc/ndefpush/NdefPushServer$Callback;->onMessageReceived(Landroid/nfc/NdefMessage;)V
    :try_end_41
    .catch Landroid/nfc/FormatException; {:try_start_7 .. :try_end_41} :catch_88
    .catchall {:try_start_7 .. :try_end_41} :catchall_9f

    .line 108
    :try_start_41
    const-string v6, "NdefPushServer"

    const-string v7, "about to close"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4d} :catch_ad

    .line 114
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v3    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v4    # "partial":[B
    :goto_4d
    const-string v6, "NdefPushServer"

    const-string v7, "finished connection thread"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 83
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v4    # "partial":[B
    :cond_55
    :try_start_55
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6, v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v5

    .line 84
    .local v5, "size":I
    const-string v6, "NdefPushServer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-gez v5, :cond_79

    .line 86
    const/4 v1, 0x1

    goto :goto_15

    .line 89
    :cond_79
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_7d} :catch_7e
    .catch Landroid/nfc/FormatException; {:try_start_55 .. :try_end_7d} :catch_88
    .catchall {:try_start_55 .. :try_end_7d} :catchall_9f

    goto :goto_13

    .line 91
    .end local v5    # "size":I
    :catch_7e
    move-exception v2

    .line 93
    .local v2, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 94
    :try_start_80
    const-string v6, "NdefPushServer"

    const-string v7, "connection broken by IOException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catch Landroid/nfc/FormatException; {:try_start_80 .. :try_end_87} :catch_88
    .catchall {:try_start_80 .. :try_end_87} :catchall_9f

    goto :goto_13

    .line 104
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "partial":[B
    :catch_88
    move-exception v2

    .line 105
    .local v2, "e":Landroid/nfc/FormatException;
    :try_start_89
    const-string v6, "NdefPushServer"

    const-string v7, "badly formatted NDEF message, ignoring"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_9f

    .line 108
    :try_start_90
    const-string v6, "NdefPushServer"

    const-string v7, "about to close"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9c} :catch_9d

    goto :goto_4d

    .line 110
    :catch_9d
    move-exception v6

    goto :goto_4d

    .line 106
    .end local v2    # "e":Landroid/nfc/FormatException;
    :catchall_9f
    move-exception v6

    .line 108
    :try_start_a0
    const-string v7, "NdefPushServer"

    const-string v8, "about to close"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ac} :catch_af

    .line 113
    :goto_ac
    throw v6

    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v3    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v4    # "partial":[B
    :catch_ad
    move-exception v6

    goto :goto_4d

    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v3    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v4    # "partial":[B
    :catch_af
    move-exception v7

    goto :goto_ac
.end method
