.class public Lcom/lilkillaware/fbapptemplate/activities/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    sget v0, Lcom/lilkillaware/fbapptemplate/R$xml;->preferences:I

    invoke-virtual {p0, v0}, Lcom/lilkillaware/fbapptemplate/activities/SettingsActivity;->addPreferencesFromResource(I)V

    .line 13
    return-void
.end method
