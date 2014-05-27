.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$8;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/lilkillaware/fbapptemplate/util/ShareHelper$FBIntentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->share5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$8;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBShareSelected()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$8;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->share()V

    .line 357
    return-void
.end method
