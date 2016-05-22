.class public Lcom/android/nfc/utils/LNfcPopupPreference;
.super Ljava/lang/Object;
.source "LNfcPopupPreference.java"


# static fields
.field private static DBG:Z = false

.field private static INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference; = null

.field protected static final MONTHLY_STEP_MILLSECONDS:J = 0x9a7ec800L

.field protected static final MONTHPOPUP_PREFNAME:Ljava/lang/String; = "_monthTime"

.field protected static final POPUPVERSION_PREFNAME:Ljava/lang/String; = "version"

.field protected static final POPUP_VERSION:Ljava/lang/String; = "4.4.2"

.field public static final PREF:Ljava/lang/String; = "LNfcPopupPreferencePrefs"

.field private static final TAG:Ljava/lang/String; = "LNfcPopupPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field protected mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/utils/LNfcPopupPreference;->DBG:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    .line 44
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "LNfcPopupPreferencePrefs"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 46
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-virtual {p0}, Lcom/android/nfc/utils/LNfcPopupPreference;->updatePerferenceKey()V

    .line 49
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/nfc/utils/LNfcPopupPreference;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    sget-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    .line 224
    new-instance v0, Lcom/android/nfc/utils/LNfcPopupPreference;

    invoke-direct {v0, p0}, Lcom/android/nfc/utils/LNfcPopupPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    .line 227
    :cond_d
    sget-object v0, Lcom/android/nfc/utils/LNfcPopupPreference;->INSTANCE:Lcom/android/nfc/utils/LNfcPopupPreference;

    return-object v0
.end method


# virtual methods
.method public checkMonthPopupEnable(Ljava/lang/String;)Z
    .registers 12
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    .line 174
    iget-object v5, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v5, :cond_8

    .line 184
    :cond_7
    :goto_7
    return v4

    .line 178
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, "currentTime":J
    iget-object v5, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_monthTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 181
    .local v2, "saveTime":J
    const-string v5, "LNfcPopupPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentTime : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "MMM dd, yyyy h:mmaa"

    invoke-static {v7, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", saveTime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MMM dd, yyyy h:mmaa"

    invoke-static {v7, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    cmp-long v5, v2, v8

    if-eqz v5, :cond_7

    sub-long v6, v0, v2

    const-wide v8, 0x9a7ec800L

    cmp-long v5, v6, v8

    if-gtz v5, :cond_7

    const/4 v4, 0x0

    goto :goto_7
.end method

.method public getPopupEnable(I)Z
    .registers 7
    .param p1, "prefnumber"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 97
    const-string v1, "LNfcPopupPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPopupEnable : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_27

    .line 114
    :goto_26
    return v0

    .line 102
    :cond_27
    sparse-switch p1, :sswitch_data_82

    goto :goto_26

    .line 104
    :sswitch_2b
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag_defaultcheckbox"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_26

    .line 106
    :sswitch_43
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handover_checkbox"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_26

    .line 108
    :sswitch_5b
    iget-object v1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "popup_monthlycheck"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_26

    .line 110
    :sswitch_73
    const-string v0, "tag_defaultcheckbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->checkMonthPopupEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_26

    .line 112
    :sswitch_7a
    const-string v0, "handover_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->checkMonthPopupEnable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_26

    .line 102
    nop

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_43
        0x4 -> :sswitch_5b
        0x64 -> :sswitch_73
        0x65 -> :sswitch_7a
    .end sparse-switch
.end method

.method public getSharedPreferencesInstance()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public removeCurrentTime(Ljava/lang/String;)V
    .registers 6
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mContext:Landroid/content/Context;

    const-string v1, "LNfcPopupPreferencePrefs"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    .line 189
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_23

    .line 192
    :cond_1b
    const-string v0, "LNfcPopupPreference"

    const-string v1, "removeCurrentTime : mPrefs is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_22
    return-void

    .line 196
    :cond_23
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_monthTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 197
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_22
.end method

.method public resetPopupPreference()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 163
    sget-boolean v0, Lcom/android/nfc/utils/LNfcPopupPreference;->DBG:Z

    const-string v1, "LNfcPopupPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetPopupPreference : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1e

    .line 171
    :goto_1d
    return-void

    .line 167
    :cond_1e
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag_defaultcheckbox"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handover_checkbox"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popup_monthlycheck"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1d
.end method

.method public setCurrentTimeforMonthlyPopup(Ljava/lang/String;)V
    .registers 7
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_46

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 203
    .local v0, "currentTime":J
    const-string v2, "LNfcPopupPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "MMM dd, yyyy h:mmaa"

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_monthTime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 205
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    .end local v0    # "currentTime":J
    :goto_45
    return-void

    .line 207
    :cond_46
    const-string v2, "LNfcPopupPreference"

    const-string v3, "prefsEditor is null"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method

.method public setPopupEnable(IZ)Z
    .registers 8
    .param p1, "prefnumber"    # I
    .param p2, "prefvalue"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 119
    const-string v2, "LNfcPopupPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPopupEnable : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_25

    .line 159
    :goto_24
    return v0

    .line 124
    :cond_25
    sparse-switch p1, :sswitch_data_96

    goto :goto_24

    .line 126
    :sswitch_29
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tag_defaultcheckbox"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    :goto_44
    if-eq p1, v1, :cond_49

    .line 148
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4e

    .line 149
    :cond_49
    const-string v0, "tag_defaultcheckbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->removeCurrentTime(Ljava/lang/String;)V

    :cond_4e
    move v0, v1

    .line 159
    goto :goto_24

    .line 130
    :sswitch_50
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handover_checkbox"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_44

    .line 134
    :sswitch_6c
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "popup_monthlycheck"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_44

    .line 138
    :sswitch_88
    const-string v0, "tag_defaultcheckbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->setCurrentTimeforMonthlyPopup(Ljava/lang/String;)V

    move v0, v1

    .line 139
    goto :goto_24

    .line 141
    :sswitch_8f
    const-string v0, "handover_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/nfc/utils/LNfcPopupPreference;->setCurrentTimeforMonthlyPopup(Ljava/lang/String;)V

    move v0, v1

    .line 142
    goto :goto_24

    .line 124
    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_50
        0x4 -> :sswitch_6c
        0x64 -> :sswitch_88
        0x65 -> :sswitch_8f
    .end sparse-switch
.end method

.method public setUserID(I)V
    .registers 2
    .param p1, "userid"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    .line 214
    return-void
.end method

.method protected updatePerferenceKey()V
    .registers 13

    .prologue
    .line 52
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v6, :cond_1a

    .line 53
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "version"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "4.4.2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 90
    :cond_1a
    :goto_1a
    return-void

    .line 57
    :cond_1b
    const-string v6, "LNfcPopupPreference"

    const-string v7, "UpdatePerferenceKey"

    invoke-static {v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 59
    .local v4, "prefsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 60
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    if-eqz v4, :cond_4e

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4e

    .line 63
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 64
    .local v2, "keyList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 66
    .local v1, "keyArray":[Ljava/lang/String;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_4c
    if-lt v6, v7, :cond_5d

    .line 88
    .end local v1    # "keyArray":[Ljava/lang/String;
    .end local v2    # "keyList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4e
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "version"

    const-string v8, "4.4.2"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v6, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1a

    .line 66
    .restart local v1    # "keyArray":[Ljava/lang/String;
    .restart local v2    # "keyList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5d
    aget-object v0, v1, v6

    .line 67
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_6b

    .line 66
    :cond_68
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 70
    :cond_6b
    const-string v8, "LNfcPopupPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Update key : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 72
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 73
    .local v3, "lastChars":[C
    array-length v8, v3

    if-lez v8, :cond_af

    .line 74
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-char v8, v3, v8

    const/16 v9, 0x30

    if-lt v8, v9, :cond_9c

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-char v8, v3, v8

    const/16 v9, 0x39

    if-le v8, v9, :cond_af

    .line 75
    :cond_9c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mUserId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_af
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_bb

    .line 78
    iget-object v8, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-interface {v8, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_68

    .line 79
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_bb
    instance-of v8, v5, Ljava/lang/Long;

    if-eqz v8, :cond_cb

    .line 80
    iget-object v8, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    check-cast v5, Ljava/lang/Long;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v8, v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_68

    .line 81
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_cb
    instance-of v8, v5, Ljava/lang/Boolean;

    if-eqz v8, :cond_db

    .line 82
    iget-object v8, p0, Lcom/android/nfc/utils/LNfcPopupPreference;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_68

    .line 84
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_db
    const-string v8, "LNfcPopupPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unknown value instance : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_68
.end method
