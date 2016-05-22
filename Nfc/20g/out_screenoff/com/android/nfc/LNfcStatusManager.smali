.class public Lcom/android/nfc/LNfcStatusManager;
.super Ljava/lang/Object;
.source "LNfcStatusManager.java"


# static fields
.field public static LGE_NDEF_PUSH_ON_DEFAULT:Z

.field public static LGE_NFC_ON_DEFAULT:Z

.field public static NFC_CARD_ON_DEFAULT:Z

.field public static NFC_DISCOVERY_ON_DEFAULT:Z

.field public static NFC_SYSTEM_ON_DEFAULT:Z

.field public static PREF_NFC_CARD_ON:Ljava/lang/String;

.field public static PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

.field public static PREF_NFC_SYSTEM_ON:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 20
    const-string v0, "LNfcStatusManager"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->TAG:Ljava/lang/String;

    .line 28
    const-string v0, "nfc_system_on"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    .line 30
    const-string v0, "nfc_card_on"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    .line 31
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    .line 32
    const-string v0, "nfc_discovery_on"

    sput-object v0, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    .line 33
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    .line 35
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->LGE_NFC_ON_DEFAULT:Z

    .line 36
    sput-boolean v1, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 39
    iput-object p1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-virtual {p0}, Lcom/android/nfc/LNfcStatusManager;->setDefaultPreference()V

    .line 45
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    sget-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 46
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    sget-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_40

    .line 47
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    sget-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_40

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 50
    :cond_40
    return-void
.end method

.method public static checkflag(II)Z
    .registers 3
    .param p0, "nfcstatus"    # I
    .param p1, "flag"    # I

    .prologue
    .line 92
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public allowNfcStatus(I)Z
    .registers 7
    .param p1, "nfcstatus"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getBootComplete()Z

    move-result v2

    if-nez v2, :cond_9

    .line 88
    :cond_8
    :goto_8
    return v0

    .line 57
    :cond_9
    const/4 v2, 0x0

    invoke-static {v2, p1}, Lcom/android/nfc/MDMNfcServiceAdapter;->isNfcAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 64
    invoke-static {p1, v1}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 65
    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 70
    :cond_22
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 71
    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 76
    :cond_35
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 77
    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 82
    :cond_48
    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/android/nfc/LNfcStatusManager;->checkflag(II)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 83
    iget-object v2, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "ndef_push_on"

    sget-boolean v4, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5c
    move v0, v1

    .line 88
    goto :goto_8
.end method

.method public isNfcStatusSetting()Z
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 146
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 147
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 148
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ndef_push_on"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 145
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public saveNfcCardOnSetting(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 104
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_CARD_ON:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    if-nez p1, :cond_1d

    .line 108
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "nfc_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :cond_1d
    monitor-exit v1

    .line 112
    return-void

    .line 103
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public saveNfcDefaultStatusSetting()V
    .registers 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 135
    :try_start_3
    invoke-virtual {p0}, Lcom/android/nfc/LNfcStatusManager;->isNfcStatusSetting()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 136
    sget-boolean v0, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcStatusManager;->saveNfcSystemOnSetting(Z)V

    .line 137
    sget-boolean v0, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcStatusManager;->saveNfcCardOnSetting(Z)V

    .line 138
    sget-boolean v0, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcStatusManager;->saveNfcDiscoveryOnSetting(Z)V

    .line 139
    sget-boolean v0, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcStatusManager;->saveNfcP2pOnSetting(Z)V

    .line 134
    :cond_1d
    monitor-exit v1

    .line 142
    return-void

    .line 134
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public saveNfcDiscoveryOnSetting(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 116
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_DISCOVERY_ON:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    if-eqz p1, :cond_1d

    .line 120
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "nfc_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    :cond_1d
    monitor-exit v1

    .line 124
    return-void

    .line 115
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public saveNfcP2pOnSetting(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 128
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ndef_push_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    monitor-exit v1

    .line 131
    return-void

    .line 127
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public saveNfcSystemOnSetting(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/nfc/LNfcStatusManager;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 97
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/android/nfc/LNfcStatusManager;->PREF_NFC_SYSTEM_ON:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    monitor-exit v1

    .line 100
    return-void

    .line 96
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setDefaultPreference()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_43

    .line 153
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->LGE_NFC_ON_DEFAULT:Z

    .line 154
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    .line 155
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3d

    .line 156
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    .line 161
    :goto_20
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "rw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_40

    .line 162
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    .line 173
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "p2p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_58

    .line 174
    sput-boolean v3, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    .line 178
    :goto_3c
    return-void

    .line 158
    :cond_3d
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    goto :goto_20

    .line 164
    :cond_40
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    goto :goto_2e

    .line 166
    :cond_43
    iget-object v0, p0, Lcom/android/nfc/LNfcStatusManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mDefaultOnOffType:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 167
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->LGE_NFC_ON_DEFAULT:Z

    .line 168
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_SYSTEM_ON_DEFAULT:Z

    .line 169
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_CARD_ON_DEFAULT:Z

    .line 170
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->NFC_DISCOVERY_ON_DEFAULT:Z

    goto :goto_2e

    .line 176
    :cond_58
    sput-boolean v2, Lcom/android/nfc/LNfcStatusManager;->LGE_NDEF_PUSH_ON_DEFAULT:Z

    goto :goto_3c
.end method
