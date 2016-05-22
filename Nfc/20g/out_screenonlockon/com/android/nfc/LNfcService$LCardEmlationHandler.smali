.class Lcom/android/nfc/LNfcService$LCardEmlationHandler;
.super Landroid/os/Handler;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LCardEmlationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LNfcService;


# direct methods
.method private constructor <init>(Lcom/android/nfc/LNfcService;)V
    .registers 2

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->this$0:Lcom/android/nfc/LNfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/LNfcService;Lcom/android/nfc/LNfcService$LCardEmlationHandler;)V
    .registers 3

    .prologue
    .line 1847
    invoke-direct {p0, p1}, Lcom/android/nfc/LNfcService$LCardEmlationHandler;-><init>(Lcom/android/nfc/LNfcService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1851
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5c

    .line 1860
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 1861
    .local v1, "mTransactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v2}, Lcom/android/nfc/LGsmaAPIService;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1862
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v4, v2, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    invoke-virtual {v4, v2, v3}, Lcom/android/nfc/LGsmaAPIService;->intentAccessControl([B[B)Z

    .line 1866
    .end local v1    # "mTransactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    :cond_2c
    :goto_2c
    return-void

    .line 1854
    :pswitch_2d
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    invoke-virtual {v2}, Lcom/android/nfc/LGsmaAPIService;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1855
    new-instance v0, Landroid/content/Intent;

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_58

    const-string v2, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    :goto_4b
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/LNfcService$LCardEmlationHandler;->this$0:Lcom/android/nfc/LNfcService;

    iget-object v2, v2, Lcom/android/nfc/LNfcService;->mLGsmaAPIService:Lcom/android/nfc/LGsmaAPIService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/nfc/LGsmaAPIService;->sendMultiCastEvent([BLandroid/content/Intent;Z)Z

    goto :goto_2c

    .line 1855
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_58
    const-string v2, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    goto :goto_4b

    .line 1851
    nop

    :pswitch_data_5c
    .packed-switch 0x9
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method
