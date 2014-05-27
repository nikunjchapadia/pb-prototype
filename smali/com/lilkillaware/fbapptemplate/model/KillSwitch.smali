.class public Lcom/lilkillaware/fbapptemplate/model/KillSwitch;
.super Ljava/lang/Object;
.source "KillSwitch.java"


# instance fields
.field public Message:Ljava/lang/String;

.field public Reason:Ljava/lang/String;

.field public ShuldKillApplication:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lilkillaware/fbapptemplate/model/KillSwitch;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;

    invoke-direct {v0}, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;-><init>()V

    .line 10
    .local v0, ks:Lcom/lilkillaware/fbapptemplate/model/KillSwitch;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/lilkillaware/fbapptemplate/model/KillSwitch;->ShuldKillApplication:Ljava/lang/Boolean;

    .line 11
    return-object v0
.end method
