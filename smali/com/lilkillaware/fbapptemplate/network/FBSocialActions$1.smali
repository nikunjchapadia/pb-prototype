.class Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$1;
.super Ljava/lang/Object;
.source "FBSocialActions.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;-><init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
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
    .line 86
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .parameter "session"
    .parameter "state"
    .parameter "exception"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions$1;->this$0:Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lilkillaware/fbapptemplate/network/FBSocialActions;->sessionStatusCallback(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 91
    return-void
.end method
