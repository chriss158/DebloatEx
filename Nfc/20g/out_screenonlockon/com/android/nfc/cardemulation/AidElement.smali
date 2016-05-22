.class public Lcom/android/nfc/cardemulation/AidElement;
.super Ljava/lang/Object;
.source "AidElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final ROUTE_WIEGHT_FOREGROUND:I = 0x3

.field static final ROUTE_WIEGHT_OTHER:I = 0x1

.field static final ROUTE_WIEGHT_PAYMENT:I = 0x2


# instance fields
.field private mAid:Ljava/lang/String;

.field private mPowerState:I

.field private mRouteLocation:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "route"    # I
    .param p4, "power"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    .line 39
    iput p3, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    .line 40
    iput p4, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    .line 41
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 74
    move-object v0, p1

    check-cast v0, Lcom/android/nfc/cardemulation/AidElement;

    .line 76
    .local v0, "elem":Lcom/android/nfc/cardemulation/AidElement;
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v2

    if-le v1, v2, :cond_d

    .line 77
    const/4 v1, -0x1

    .line 85
    :goto_c
    return v1

    .line 79
    :cond_d
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 80
    const/4 v1, 0x1

    goto :goto_c

    .line 82
    :cond_17
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_37

    .line 83
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_c

    .line 85
    :cond_37
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_c
.end method

.method public getAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerState()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    return v0
.end method

.method public getRouteLocation()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    return v0
.end method

.method public getWeight()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    return v0
.end method

.method public setAid(Ljava/lang/String;)V
    .registers 2
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPowerState(I)V
    .registers 2
    .param p1, "powerState"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    .line 57
    return-void
.end method

.method public setRouteLocation(I)V
    .registers 2
    .param p1, "routeLocation"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v1, ", power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",weight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
