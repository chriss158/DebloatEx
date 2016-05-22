.class public Lcom/android/nfc/cardemulation/DefaultRemovedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "DefaultRemovedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "DefaultRemovedActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 69
    const-string v6, "DCM"

    sget-object v7, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 74
    :try_start_a
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 75
    .local v5, "recvIntent":Landroid/content/Intent;
    const-string v6, "PAGE_VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 76
    const-string v6, "PACKAGE_NAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "packName":Ljava/lang/String;
    const-string v6, "CLASS_NAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "className":Ljava/lang/String;
    const-string v6, "PAGE_VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "pageView":Ljava/lang/String;
    const-string v6, "MODE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 81
    .local v2, "mode":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v1, "intent":Landroid/content/Intent;
    const v6, 0x10008000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v6}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4a} :catch_4b

    .line 99
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mode":I
    .end local v3    # "packName":Ljava/lang/String;
    .end local v4    # "pageView":Ljava/lang/String;
    .end local v5    # "recvIntent":Landroid/content/Intent;
    :cond_4a
    :goto_4a
    return-void

    .line 89
    :catch_4b
    move-exception v6

    const-string v6, "DefaultRemovedActivity"

    const-string v7, "client not found : com.nttdocomo.android.tapandpay.TapAndPay"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 97
    :cond_54
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.NFC_PAYMENT_SETTINGS"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v1, 0x10302d2

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->setTheme(I)V

    .line 43
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object v0, p0, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 47
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v1, "DCM"

    sget-object v2, Lcom/lge/os/Build$CA_TARGET;->OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 50
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 51
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 52
    const v1, 0x7f080077

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 53
    const v1, 0x7f080078

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 61
    :goto_39
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->setupAlert()V

    .line 63
    return-void

    .line 57
    :cond_3f
    const v1, 0x7f08001f

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 58
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 59
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_39
.end method
