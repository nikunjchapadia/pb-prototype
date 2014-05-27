.class public Lcom/lilkillaware/fbapptemplate/activities/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    const v1, 0x1030007

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/AboutActivity;->setTheme(I)V

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v1, Lcom/lilkillaware/fbapptemplate/R$layout;->activity_about:I

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/AboutActivity;->setContentView(I)V

    .line 18
    sget v1, Lcom/lilkillaware/fbapptemplate/R$id;->txtGeneratedBy:I

    invoke-virtual {p0, v1}, Lcom/lilkillaware/fbapptemplate/activities/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, tv:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 20
    return-void
.end method
