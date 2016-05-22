.class Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
.super Landroid/os/Handler;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 465
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v4, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 466
    :try_start_5
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v4, :cond_14

    .line 467
    const-string v4, "HostEmulationManager"

    const-string v6, "Dropping service response message; service no longer active."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit v5

    .line 504
    :cond_13
    :goto_13
    return-void

    .line 469
    :cond_14
    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v6}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 470
    const-string v4, "HostEmulationManager"

    const-string v6, "Dropping service response message; service no longer bound."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    monitor-exit v5

    goto :goto_13

    .line 465
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v4

    :cond_34
    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_31

    .line 474
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8b

    .line 475
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 476
    .local v1, "dataBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_13

    .line 479
    const-string v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 480
    .local v0, "data":[B
    if-eqz v0, :cond_4b

    array-length v4, v0

    if-nez v4, :cond_53

    .line 481
    :cond_4b
    const-string v4, "HostEmulationManager"

    const-string v5, "Dropping empty R-APDU"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 485
    :cond_53
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v4, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 486
    :try_start_58
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget v3, v4, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 485
    .local v3, "state":I
    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_6f

    .line 488
    const/4 v4, 0x4

    if-ne v3, v4, :cond_72

    .line 489
    const-string v4, "HostEmulationManager"

    const-string v5, "Sending data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_13

    .line 485
    .end local v3    # "state":I
    :catchall_6f
    move-exception v4

    :try_start_70
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v4

    .line 492
    .restart local v3    # "state":I
    :cond_72
    const-string v4, "HostEmulationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Dropping data, wrong state "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 494
    .end local v0    # "data":[B
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    .end local v3    # "state":I
    :cond_8b
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_13

    .line 495
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v4, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 496
    :try_start_95
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 498
    .local v2, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b8

    .line 499
    iget-object v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    .line 500
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v7, v7, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 499
    invoke-virtual {v6, v4, v7, v8}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 495
    :cond_b8
    monitor-exit v5

    goto/16 :goto_13

    .end local v2    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :catchall_bb
    move-exception v4

    monitor-exit v5
    :try_end_bd
    .catchall {:try_start_95 .. :try_end_bd} :catchall_bb

    throw v4
.end method
