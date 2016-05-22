.class Lcom/android/nfc/cardemulation/LCardEmulationPopupList$1;
.super Landroid/content/BroadcastReceiver;
.source "LCardEmulationPopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationPopupList;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    .line 136
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v6, 0x10008000

    const/4 v4, 0x0

    .line 139
    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 164
    :cond_8
    :goto_8
    return-void

    .line 143
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.lge.nfc.action.NFC_EXCEED_POPUP_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 145
    const-string v3, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    .local v1, "isSettingIntent":Z
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "hcepopup"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    iget-object v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationPopupList$1;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    if-eqz v1, :cond_8

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.settings.NFC_ROUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "settingRouteDestIntent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 155
    .end local v1    # "isSettingIntent":Z
    .end local v2    # "settingRouteDestIntent":Landroid/content/Intent;
    :cond_3c
    const-string v3, "com.lge.nfc.action.NFC_EXCEED_AUTO_POPUP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 156
    const-string v3, "com.lge.nfc.extra.SEND_HCE_SETTING"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 158
    .restart local v1    # "isSettingIntent":Z
    if-eqz v1, :cond_8

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.settings.NFC_AUTO_ROUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v2    # "settingRouteDestIntent":Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method
