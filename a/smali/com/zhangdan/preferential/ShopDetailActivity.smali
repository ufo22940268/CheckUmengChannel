.class public Lcom/zhangdan/preferential/ShopDetailActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/zhangdan/preferential/a/aa;

.field protected c:Lcom/a/a/a/f/b;

.field protected d:Lcom/a/a/a/a;

.field public e:Lcom/weibo/sdk/android/b/a;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/zhangdan/preferential/a/o;

.field private h:Lcom/zhangdan/preferential/a/f;

.field private i:Lcom/zhangdan/preferential/data/model/l;

.field private j:Lcom/zhangdan/preferential/a/q;

.field private k:Lcom/zhangdan/preferential/a/ab;

.field private l:Lcom/weibo/sdk/android/e;

.field private m:Landroid/widget/ListView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Lcom/zhangdan/preferential/ar;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/zhangdan/preferential/widget/CustomStarView;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/widget/ImageView;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->h:Lcom/zhangdan/preferential/a/f;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->c:Lcom/a/a/a/f/b;

    invoke-virtual {v0, p2, p0}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->d:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->a()Lcom/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/a/a/a/e/b;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ShopDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/l;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zhangdan/preferential/ap;

    invoke-direct {v2, p0, p1}, Lcom/zhangdan/preferential/ap;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/data/model/k;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/k;->b:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/a/o;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->g:Lcom/zhangdan/preferential/a/o;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/l;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/l;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->B:Z

    iget-boolean v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->B:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->k()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->l()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/widget/CustomStarView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->u:Lcom/zhangdan/preferential/widget/CustomStarView;

    return-object v0
.end method

.method static synthetic h(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/ar;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->q:Lcom/zhangdan/preferential/ar;

    return-object v0
.end method

.method static synthetic j(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->v:Landroid/view/View;

    return-object v0
.end method

.method private j()[Landroid/content/Intent;
    .locals 6

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v2, v0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic k(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->w:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f0201e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic l(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->e:Lcom/weibo/sdk/android/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->e:Lcom/weibo/sdk/android/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/b/a;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->finish()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->p:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->j:Lcom/zhangdan/preferential/a/q;

    iget-object v2, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    invoke-virtual {v1, v2, v0}, Lcom/zhangdan/preferential/a/q;->a(Lcom/zhangdan/preferential/data/model/l;Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->B:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->k:Lcom/zhangdan/preferential/a/ab;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v1, v1, Lcom/zhangdan/preferential/data/model/l;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/a/ab;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->k()V

    iput-boolean v4, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->B:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->k:Lcom/zhangdan/preferential/a/ab;

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v1, v1, Lcom/zhangdan/preferential/data/model/l;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/BaseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/preferential/a/ab;->b(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->l()V

    iput-boolean v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->B:Z

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_PICK_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "shop_id"

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v3, v3, Lcom/zhangdan/preferential/data/model/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->e:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->j()[Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/zhangdan/preferential/ao;

    invoke-direct {v3, p0, v1}, Lcom/zhangdan/preferential/ao;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;[Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0801ef

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->i:Lcom/zhangdan/preferential/data/model/l;

    iget-object v0, v0, Lcom/zhangdan/preferential/data/model/l;->w:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0801f0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f060037 -> :sswitch_0
        0x7f060317 -> :sswitch_2
        0x7f060318 -> :sswitch_1
        0x7f060324 -> :sswitch_3
        0x7f060325 -> :sswitch_4
        0x7f060326 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f060317

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->f:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/zhangdan/preferential/a/o;

    invoke-direct {v0}, Lcom/zhangdan/preferential/a/o;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->g:Lcom/zhangdan/preferential/a/o;

    new-instance v0, Lcom/zhangdan/preferential/a/f;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->h:Lcom/zhangdan/preferential/a/f;

    new-instance v0, Lcom/zhangdan/preferential/a/q;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->j:Lcom/zhangdan/preferential/a/q;

    new-instance v0, Lcom/zhangdan/preferential/a/ab;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->k:Lcom/zhangdan/preferential/a/ab;

    new-instance v0, Lcom/zhangdan/preferential/a/aa;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->C:Lcom/zhangdan/preferential/a/aa;

    const-string v0, "4101037885"

    const-string v1, "http://www.51zhangdan.com/service/user/sinalogin.ashx"

    invoke-static {v0, v1}, Lcom/weibo/sdk/android/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->l:Lcom/weibo/sdk/android/e;

    invoke-static {}, Lcom/zhangdan/app/ZhangdanApplication;->f()Lcom/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->d:Lcom/a/a/a/a;

    const v0, 0x7f02026c

    invoke-static {p0, v0}, Lcom/a/a/a/f/b;->a(Landroid/content/Context;I)Lcom/a/a/a/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->c:Lcom/a/a/a/f/b;

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->c:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->a()V

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->c:Lcom/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/a/a/a/f/b;->b()V

    const v0, 0x7f0300f9

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shop_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "photo_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07003a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->z:I

    invoke-virtual {p0}, Lcom/zhangdan/preferential/ShopDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->A:I

    const v0, 0x7f06017f

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->m:Landroid/widget/ListView;

    const v0, 0x7f060321

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f060322

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f060151

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->p:Landroid/widget/ImageView;

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->r:Landroid/view/View;

    const v0, 0x7f0602bd

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0601bc

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0602b1

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/preferential/widget/CustomStarView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->u:Lcom/zhangdan/preferential/widget/CustomStarView;

    const v0, 0x7f060314

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->v:Landroid/view/View;

    const v0, 0x7f060315

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->w:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->x:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->x:Landroid/view/ViewGroup;

    const v3, 0x7f06011d

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->y:Landroid/widget/ImageView;

    new-instance v0, Lcom/zhangdan/preferential/ar;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/ar;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->q:Lcom/zhangdan/preferential/ar;

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->m:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->q:Lcom/zhangdan/preferential/ar;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    const v0, 0x7f060318

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v6}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060324

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060325

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060326

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->p:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/zhangdan/preferential/aq;

    invoke-direct {v0, p0, v4}, Lcom/zhangdan/preferential/aq;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;B)V

    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/zhangdan/preferential/aq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const v4, 0xffffff

    const/high16 v1, 0x3f80

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v2, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->A:I

    sub-int v0, v2, v0

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->v:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->scrollTo(II)V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->A:I

    iget v2, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->z:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->z:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    :goto_2
    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->n:Landroid/widget/TextView;

    add-int v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/zhangdan/preferential/ShopDetailActivity;->o:Landroid/widget/TextView;

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
