.class public Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private a:Lcom/slidingmenu/lib/app/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/slidingmenu/lib/app/a;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/app/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/a;->a()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingPreferenceActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->a(Landroid/view/View;)V

    return-void
.end method
