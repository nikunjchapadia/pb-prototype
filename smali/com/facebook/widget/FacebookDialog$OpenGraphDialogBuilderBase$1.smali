.class Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;
.super Ljava/lang/Object;
.source "FacebookDialog.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$OnPresentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;


# direct methods
.method constructor <init>(Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 1050
    .local p0, this:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;,"Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase.1;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresent(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, this:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;,"Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase.1;"
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    #getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->imageAttachments:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->access$700(Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    #getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->imageAttachments:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->access$700(Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1055
    #calls: Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->access$800()Lcom/facebook/NativeAppCallAttachmentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    iget-object v1, v1, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    #getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->imageAttachments:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->access$700(Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    #getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->imageAttachmentFiles:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->access$900(Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    #getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->imageAttachmentFiles:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->access$900(Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1058
    #calls: Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->access$800()Lcom/facebook/NativeAppCallAttachmentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    iget-object v1, v1, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase$1;->this$0:Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    .line 1059
    #getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->imageAttachmentFiles:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->access$900(Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 1058
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentFilesForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V

    .line 1061
    :cond_1
    return-void
.end method
