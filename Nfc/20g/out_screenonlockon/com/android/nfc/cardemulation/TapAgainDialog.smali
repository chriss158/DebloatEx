.class public Lcom/android/nfc/cardemulation/TapAgainDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "TapAgainDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "com.android.nfc.cardmeulation.close_tap_dialog"

.field public static final EXTRA_APDU_SERVICE:Ljava/lang/String; = "apdu_service"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mClosedOnRequest:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    .line 47
    new-instance v0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/TapAgainDialog$1;-><init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)V
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .param p1, "arg1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    return-void
.end method

.method public static ajc$get$mClosedOnRequest(Lcom/android/nfc/cardemulation/TapAgainDialog;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    return v0
.end method

.method public static ajc$set$mClosedOnRequest(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    return-void
.end method


# virtual methods
.method public ajc$superDispatch$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 132
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$interMethod$com_android_nfc_cardemulation_ATapAgainDialog$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Lcom/android/nfc/cardemulation/TapAgainDialog;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    :try_start_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v12, 0x10302d2

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setTheme(I)V

    .line 61
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 62
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v12

    iput-object v12, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 63
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 64
    .local v6, "intent":Landroid/content/Intent;
    const-string v12, "category"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "category":Ljava/lang/String;
    const-string v12, "apdu_service"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 66
    .local v9, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v12, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v4, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v12, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v4}, Lcom/android/nfc/cardemulation/TapAgainDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 71
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v12, ""

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030006

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 75
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v13, 0x7f0a0011

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 76
    .local v10, "tv":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_68

    .line 78
    invoke-virtual {v9, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 79
    .local v7, "label":Ljava/lang/CharSequence;
    if-nez v7, :cond_af

    .line 80
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 87
    .end local v7    # "label":Ljava/lang/CharSequence;
    :cond_68
    :goto_68
    const-string v12, "lge.nfc.vendor"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "sony"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d2

    .line 88
    const-string v12, "payment"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b4

    .line 89
    const v12, 0x7f080073

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_92
    const v12, 0x7f080074

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 109
    :goto_9b
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setupAlert()V

    .line 110
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 111
    .local v11, "window":Landroid/view/Window;
    const/high16 v12, 0x400000

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a7} :catch_c9

    .line 112
    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->aspectOf()Lcom/android/nfc/cardemulation/ATapAgainDialog;

    move-result-object v12

    invoke-virtual {v12, p0}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$after$com_android_nfc_cardemulation_ATapAgainDialog$1$c3082300(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    return-void

    .line 82
    .end local v5    # "formatString":Ljava/lang/String;
    .end local v11    # "window":Landroid/view/Window;
    .restart local v7    # "label":Ljava/lang/CharSequence;
    :cond_af
    :try_start_af
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_68

    .line 92
    .end local v7    # "label":Ljava/lang/CharSequence;
    :cond_b4
    const v12, 0x7f080073

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    .restart local v5    # "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_c8} :catch_c9

    goto :goto_92

    .line 112
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v1    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v2    # "category":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "formatString":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v10    # "tv":Landroid/widget/TextView;
    :catch_c9
    move-exception v12

    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->aspectOf()Lcom/android/nfc/cardemulation/ATapAgainDialog;

    move-result-object v13

    invoke-virtual {v13, p0}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$after$com_android_nfc_cardemulation_ATapAgainDialog$1$c3082300(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    throw v12

    .line 99
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v1    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v2    # "category":Ljava/lang/String;
    .restart local v3    # "description":Ljava/lang/String;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v10    # "tv":Landroid/widget/TextView;
    :cond_d2
    :try_start_d2
    const-string v12, "payment"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 100
    const v12, 0x7f080019

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    .restart local v5    # "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_ee
    const/high16 v12, 0x1040000

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_9b

    .line 103
    .end local v5    # "formatString":Ljava/lang/String;
    :cond_f7
    const v12, 0x7f08001a

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    .restart local v5    # "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_10b} :catch_c9

    goto :goto_ee
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 122
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 123
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    if-nez v0, :cond_d

    .line 124
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(Landroid/content/ComponentName;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_15

    .line 127
    :cond_d
    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->aspectOf()Lcom/android/nfc/cardemulation/ATapAgainDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$after$com_android_nfc_cardemulation_ATapAgainDialog$3$2fa04006(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    return-void

    :catch_15
    move-exception v0

    invoke-static {}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->aspectOf()Lcom/android/nfc/cardemulation/ATapAgainDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/nfc/cardemulation/ATapAgainDialog;->ajc$after$com_android_nfc_cardemulation_ATapAgainDialog$3$2fa04006(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    throw v0
.end method
