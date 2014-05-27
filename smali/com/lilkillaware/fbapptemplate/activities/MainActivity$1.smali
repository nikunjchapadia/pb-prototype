.class Lcom/lilkillaware/fbapptemplate/activities/MainActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lilkillaware/fbapptemplate/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

.field final synthetic val$actionBar:Landroid/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/lilkillaware/fbapptemplate/activities/MainActivity;Landroid/app/ActionBar;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$1;->this$0:Lcom/lilkillaware/fbapptemplate/activities/MainActivity;

    iput-object p2, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$1;->val$actionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lilkillaware/fbapptemplate/activities/MainActivity$1;->val$actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 118
    return-void
.end method
