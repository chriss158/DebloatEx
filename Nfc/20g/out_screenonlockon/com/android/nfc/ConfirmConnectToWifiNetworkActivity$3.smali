.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;
.super Ljava/lang/Object;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onSuccess_aroundBody0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;)V
    .registers 4
    .param p0, "ajc$this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 104
    const v1, 0x7f080023

    const/4 v2, 0x0

    .line 103
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    return-void
.end method

.method private static final onSuccess_aroundBody1$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .param p0, "ajc$this"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;
    .param p1, "ajc$aspectInstance"    # Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    const/4 v5, 0x0

    .line 119
    const-string v1, "PopupDialogType"

    .line 120
    sget-object v2, Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;->vzw:Lcom/lge/nfcconfig/NfcConfigure$PopupScenarioList;

    .line 119
    invoke-static {v1, v2}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 120
    if-nez v1, :cond_f

    .line 121
    invoke-static {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->onSuccess_aroundBody0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;)V

    .line 126
    :goto_e
    return-void

    .line 124
    :cond_f
    invoke-static {p1}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$get$mCurrentWifiConfiguration(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "printableSsid":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v1

    invoke-static {p1}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_AConfirmConnectToWifiNetworkActivity$com_android_nfc_AConfirmConnectToWifiNetworkActivity$mActivity(Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;)Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    move-result-object v2

    const v3, 0x7f08002f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_e
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # invokes: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V
    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$3(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 110
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;->aspectOf()Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->onSuccess_aroundBody1$advice(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;Lcom/android/nfc/AConfirmConnectToWifiNetworkActivity;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    return-void
.end method
