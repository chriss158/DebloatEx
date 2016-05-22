.class final Lcom/android/nfc/beam/LBeamManager$Singleton;
.super Ljava/lang/Object;
.source "LBeamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/LBeamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/nfc/beam/LBeamManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/nfc/beam/LBeamManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/beam/LBeamManager;-><init>(Lcom/android/nfc/beam/LBeamManager;)V

    sput-object v0, Lcom/android/nfc/beam/LBeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/LBeamManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
