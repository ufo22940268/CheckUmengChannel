.class public Lcom/slidingmenu/lib/app/SlidingFragmentActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# instance fields
.field private a:Lcom/slidingmenu/lib/app/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;)V

    return-void
.end method

.method public final c()Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/a;->c()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/a;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/a;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/a;->b()V

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/slidingmenu/lib/app/a;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/app/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/app/a;->a()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->a:Lcom/slidingmenu/lib/app/a;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/app/a;->a(Landroid/view/View;)V

    return-void
.end method
