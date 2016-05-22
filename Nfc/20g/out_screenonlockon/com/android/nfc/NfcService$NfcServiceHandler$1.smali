.class Lcom/android/nfc/NfcService$NfcServiceHandler$1;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 1809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDisconnected(J)V
    .registers 5
    .param p1, "handle"    # J

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    # getter for: Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;
    invoke-static {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->access$0(Lcom/android/nfc/NfcService$NfcServiceHandler;)Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1813
    return-void
.end method
