.class Lcom/android/nfc/LSmartCardService$1;
.super Ljava/lang/Object;
.source "LSmartCardService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LSmartCardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LSmartCardService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LSmartCardService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/LSmartCardService$1;->this$0:Lcom/android/nfc/LSmartCardService;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    # getter for: Lcom/android/nfc/LSmartCardService;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LSmartCardService;->access$0()Z

    move-result v0

    const-string v1, "LSmartCardService"

    const-string v2, "[NfcService]Global Access Control onServiceConnected"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/nfc/LSmartCardService$1;->this$0:Lcom/android/nfc/LSmartCardService;

    invoke-static {p2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/nfc/LSmartCardService;->mGpacAccessControlSvc:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 54
    # getter for: Lcom/android/nfc/LSmartCardService;->DBG:Z
    invoke-static {}, Lcom/android/nfc/LSmartCardService;->access$0()Z

    move-result v0

    const-string v1, "LSmartCardService"

    const-string v2, "[NfcService]Global Access Control onServiceDisconnected"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
