.class Lcom/android/nfc/cardemulation/HostEmulationManager$2;
.super Ljava/lang/Object;
.source "HostEmulationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 440
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 441
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iput-object p1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 442
    const-string v0, "HostEmulationManager"

    const-string v2, "Service bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x4

    iput v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 445
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    if-eqz v0, :cond_3b

    .line 446
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 447
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 438
    :cond_3b
    monitor-exit v1

    .line 450
    return-void

    .line 438
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_5
    const-string v0, "HostEmulationManager"

    const-string v2, "Service unbound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 457
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 454
    monitor-exit v1

    .line 459
    return-void

    .line 454
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method
