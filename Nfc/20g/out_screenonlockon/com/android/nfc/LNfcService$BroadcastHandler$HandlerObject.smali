.class Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;
.super Ljava/lang/Object;
.source "LNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcService$BroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerObject"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field final synthetic this$1:Lcom/android/nfc/LNfcService$BroadcastHandler;


# direct methods
.method public constructor <init>(Lcom/android/nfc/LNfcService$BroadcastHandler;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2510
    iput-object p1, p0, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;->this$1:Lcom/android/nfc/LNfcService$BroadcastHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2511
    iput-object p2, p0, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;->mContext:Landroid/content/Context;

    .line 2512
    iput-object p3, p0, Lcom/android/nfc/LNfcService$BroadcastHandler$HandlerObject;->mIntent:Landroid/content/Intent;

    .line 2513
    return-void
.end method
