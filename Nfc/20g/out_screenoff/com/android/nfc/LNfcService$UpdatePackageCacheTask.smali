.class Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;
.super Landroid/os/AsyncTask;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdatePackageCacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 585
    const-string v0, "LNfcService"

    const-string v1, "UpdatePackageCacheTask - begin"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-nez v0, :cond_f

    .line 595
    :goto_e
    return-object v2

    .line 590
    :cond_f
    iget-object v0, p0, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v1, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    monitor-enter v1

    .line 591
    :try_start_14
    iget-object v0, p0, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0}, Lcom/android/nfc/LGsmaAPIService;->setTransactionEventPackageList()V

    .line 592
    iget-object v0, p0, Lcom/android/nfc/LNfcService$UpdatePackageCacheTask;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v0, v0, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v0}, Lcom/android/nfc/LGsmaAPIService;->setNFCPermissionPackageList()V

    .line 590
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_2b

    .line 594
    const-string v0, "LNfcService"

    const-string v1, "UpdatePackageCacheTask - finish"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 590
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
