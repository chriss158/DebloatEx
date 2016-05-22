.class Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;
.super Landroid/os/Handler;
.source "MDMNfcServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/MDMNfcServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MDMNfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/MDMNfcServiceAdapter;


# direct methods
.method private constructor <init>(Lcom/android/nfc/MDMNfcServiceAdapter;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;->this$0:Lcom/android/nfc/MDMNfcServiceAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/MDMNfcServiceAdapter;Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/nfc/MDMNfcServiceAdapter$MDMNfcServiceHandler;-><init>(Lcom/android/nfc/MDMNfcServiceAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 58
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_8

    .line 85
    :goto_7
    return-void

    .line 62
    :cond_8
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_78

    .line 82
    const-string v4, "MDM"

    new-instance v5, Ljava/lang/StringBuilder;

    # getter for: Lcom/android/nfc/MDMNfcServiceAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$2()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "LMDMNfcServiceHandler::Unknown message received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 65
    :pswitch_2a
    # getter for: Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;
    invoke-static {}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$0()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sp_lgmdm_block_nfc_point"

    # invokes: Lcom/android/nfc/MDMNfcServiceAdapter;->getField(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$1(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, "resDisallow":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 71
    .end local v2    # "resDisallow":I
    :pswitch_44
    # getter for: Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;
    invoke-static {}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$0()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sp_lgmdm_block_nfc_cardmode_point"

    # invokes: Lcom/android/nfc/MDMNfcServiceAdapter;->getField(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$1(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "resCardMode":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 73
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 77
    .end local v1    # "resCardMode":I
    :pswitch_5e
    # getter for: Lcom/android/nfc/MDMNfcServiceAdapter;->mLgeFrameworkString:Ljava/lang/Class;
    invoke-static {}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$0()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "sp_lgmdm_block_androidbeam_point"

    # invokes: Lcom/android/nfc/MDMNfcServiceAdapter;->getField(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/nfc/MDMNfcServiceAdapter;->access$1(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, "resP2pDisallow":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 62
    :pswitch_data_78
    .packed-switch 0xa
        :pswitch_2a
        :pswitch_44
        :pswitch_5e
    .end packed-switch
.end method
