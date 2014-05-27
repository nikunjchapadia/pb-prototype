.class Lcom/lilkillaware/fbapptemplate/view/FeedView$3;
.super Ljava/lang/Object;
.source "FeedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/view/FeedView;->showFeed(Lcom/lilkillaware/fbapptemplate/model/FeedItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

.field final synthetic val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/view/FeedView;Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$3;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$3;->val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$3;->this$0:Lcom/lilkillaware/fbapptemplate/view/FeedView;

    iget-object v1, p0, Lcom/lilkillaware/fbapptemplate/view/FeedView$3;->val$item:Lcom/lilkillaware/fbapptemplate/model/FeedItem;

    invoke-virtual {v0, v1}, Lcom/lilkillaware/fbapptemplate/view/FeedView;->onItemSelect(Lcom/lilkillaware/fbapptemplate/model/FeedItem;)V

    .line 191
    return-void
.end method
