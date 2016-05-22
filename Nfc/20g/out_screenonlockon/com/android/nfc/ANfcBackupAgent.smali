.class public Lcom/android/nfc/ANfcBackupAgent;
.super Ljava/lang/Object;
.source "ANfcBackupAgent.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ANfcBackupAgent.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/ANfcBackupAgent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ANfcBackupAgent;->DBG:Z

    invoke-static {}, Lcom/android/nfc/ANfcBackupAgent;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/ANfcBackupAgent;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/ANfcBackupAgent;

    invoke-direct {v0}, Lcom/android/nfc/ANfcBackupAgent;-><init>()V

    sput-object v0, Lcom/android/nfc/ANfcBackupAgent;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcBackupAgent;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/ANfcBackupAgent;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcBackupAgent;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcBackupAgent;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_ANfcBackupAgent"

    sget-object v2, Lcom/android/nfc/ANfcBackupAgent;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/ANfcBackupAgent;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcBackupAgent;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcBackupAgent;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcBackupAgent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_android_nfc_ANfcBackupAgent$1$c3e724a0(Lcom/android/nfc/NfcBackupAgent;)V
    .registers 8
    .param p1, "agent"    # Lcom/android/nfc/NfcBackupAgent;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "agent"
        value = "(execution(* NfcBackupAgent.onCreate(..)) && this(agent))"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    sget-boolean v1, Lcom/android/nfc/ANfcBackupAgent;->DBG:Z

    const-string v2, "ANfcBackupAgent.aj"

    const-string v3, "after() : execution(* NfcBackupAgent.onCreate(..)"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "LNfcPopupPreferencePrefs"

    aput-object v2, v1, v4

    invoke-direct {v0, p1, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 26
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "shared_prefs"

    invoke-virtual {p1, v1, v0}, Lcom/android/nfc/NfcBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 28
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    .end local v0    # "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "NfcServiceCEPrefs"

    aput-object v2, v1, v4

    invoke-direct {v0, p1, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 29
    .restart local v0    # "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v1, "shared_prefs"

    invoke-virtual {p1, v1, v0}, Lcom/android/nfc/NfcBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 30
    return-void
.end method
