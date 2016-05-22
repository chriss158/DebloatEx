.class Lcom/android/nfc/LNfcService$6;
.super Ljava/lang/Object;
.source "LNfcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/LNfcService;->CardEmlationThreadstart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/LNfcService$6;->this$0:Lcom/android/nfc/LNfcService;

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1836
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1837
    iget-object v0, p0, Lcom/android/nfc/LNfcService$6;->this$0:Lcom/android/nfc/LNfcService;

    new-instance v1, Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    iget-object v2, p0, Lcom/android/nfc/LNfcService$6;->this$0:Lcom/android/nfc/LNfcService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/LNfcService$LCardEmlationHandler;-><init>(Lcom/android/nfc/LNfcService;Lcom/android/nfc/LNfcService$LCardEmlationHandler;)V

    invoke-static {v0, v1}, Lcom/android/nfc/LNfcService;->access$2(Lcom/android/nfc/LNfcService;Lcom/android/nfc/LNfcService$LCardEmlationHandler;)V

    .line 1839
    const-string v1, "LNfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "CardEmlationThreadstart "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/nfc/LNfcService$6;->this$0:Lcom/android/nfc/LNfcService;

    # getter for: Lcom/android/nfc/LNfcService;->mCeHandler:Lcom/android/nfc/LNfcService$LCardEmlationHandler;
    invoke-static {v0}, Lcom/android/nfc/LNfcService;->access$1(Lcom/android/nfc/LNfcService;)Lcom/android/nfc/LNfcService$LCardEmlationHandler;

    move-result-object v0

    if-nez v0, :cond_32

    const-string v0, "ERROR"

    :goto_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1841
    return-void

    .line 1839
    :cond_32
    const-string v0, "success"

    goto :goto_23
.end method
