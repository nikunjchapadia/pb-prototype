.class Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$3;
.super Ljava/lang/Object;
.source "SubmitFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$3;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment$3;->this$0:Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;

    invoke-virtual {v0}, Lcom/lilkillaware/fbapptemplate/fragments/SubmitFragment;->onCamera()V

    return-void
.end method
