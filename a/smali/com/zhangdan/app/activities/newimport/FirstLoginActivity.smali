.class public Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;
.super Lcom/zhangdan/app/activities/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Z

.field private i:Lcom/zhangdan/app/activities/newimport/c;

.field private j:Lcom/zhangdan/app/activities/newimport/f;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/BaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h()V

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .locals 9

    const v0, 0x7f0600b4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v6

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v7

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sub-int v6, v7, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 11

    const-wide/16 v9, 0x1f4

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x7f0600b4

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f020228

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    sub-int v3, v4, v3

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->i:Lcom/zhangdan/app/activities/newimport/c;

    invoke-virtual {v0, p1, p2}, Lcom/zhangdan/app/activities/newimport/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->j:Lcom/zhangdan/app/activities/newimport/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zhangdan/app/activities/newimport/f;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->i:Lcom/zhangdan/app/activities/newimport/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->i:Lcom/zhangdan/app/activities/newimport/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/c;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600b0

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600b3

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h:Z

    if-nez v0, :cond_0

    const-string v0, "olduser_login"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->f()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600b2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->h()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->setContentView(I)V

    const v0, 0x7f0600b0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0600b3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0600b2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0601f6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0601fb

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/zhangdan/app/activities/newimport/c;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->d:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/newimport/c;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->i:Lcom/zhangdan/app/activities/newimport/c;

    new-instance v0, Lcom/zhangdan/app/activities/newimport/f;

    iget-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/newimport/f;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->j:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {p0}, Lcom/zhangdan/app/data/a/b;->f(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "card"

    const-string v1, "first_use"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->k:Landroid/os/Handler;

    new-instance v1, Lcom/zhangdan/app/activities/newimport/b;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/newimport/b;-><init>(Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "card"

    const-string v1, "account_type"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/zhangdan/app/data/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "quick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->g()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/zhangdan/app/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->i:Lcom/zhangdan/app/activities/newimport/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/c;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->i:Lcom/zhangdan/app/activities/newimport/c;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->j:Lcom/zhangdan/app/activities/newimport/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/newimport/f;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/newimport/FirstLoginActivity;->j:Lcom/zhangdan/app/activities/newimport/f;

    return-void
.end method
