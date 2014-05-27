.class public Lcom/lilkillaware/fbapptemplate/util/HelperMethods;
.super Ljava/lang/Object;
.source "HelperMethods.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecondsElapsed(Ljava/util/Date;)J
    .locals 10
    .parameter "time"

    .prologue
    .line 8
    if-nez p0, :cond_0

    const-wide/16 v2, 0x0

    .line 9
    .local v2, lastMiliseconds:J
    :goto_0
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 10
    .local v0, currentMiliseconds:J
    sub-long v6, v0, v2

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 11
    .local v4, seconds:J
    return-wide v4

    .line 8
    .end local v0           #currentMiliseconds:J
    .end local v2           #lastMiliseconds:J
    .end local v4           #seconds:J
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method
