.class final Lcom/zhangdan/preferential/aq;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/zhangdan/preferential/ShopDetailActivity;


# direct methods
.method private constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/preferential/ShopDetailActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/preferential/aq;-><init>(Lcom/zhangdan/preferential/ShopDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    check-cast p1, [Ljava/lang/String;

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->b(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/a/o;

    iget-object v3, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zhangdan/preferential/data/model/d;

    const/16 v5, 0x836

    invoke-direct {v4, v5}, Lcom/zhangdan/preferential/data/model/d;-><init>(I)V

    const-string v5, "id"

    invoke-virtual {v4, v5, v1}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/zhangdan/preferential/data/model/d;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zhangdan/preferential/data/model/d;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zhangdan/preferential/a/f;->f(Lorg/json/JSONObject;)Lcom/zhangdan/preferential/data/model/l;

    move-result-object v2

    iget-object v1, v2, Lcom/zhangdan/preferential/data/model/l;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/a/f;

    move-result-object v1

    iget-object v3, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->b(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/a/o;

    const-string v3, "2.00k8wvoBmwdnQC2c67bdd404s_BXXC"

    iget-object v4, v2, Lcom/zhangdan/preferential/data/model/l;->u:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/zhangdan/preferential/a/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zhangdan/preferential/a/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v1, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v1}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/a/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/zhangdan/preferential/data/model/l;->A:Ljava/util/List;

    :cond_0
    return-object v2

    :cond_1
    const-string v4, "statuses"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/zhangdan/preferential/data/model/p;

    invoke-direct {v5}, Lcom/zhangdan/preferential/data/model/p;-><init>()V

    const-string v6, "text"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/zhangdan/preferential/data/model/p;->b:Ljava/lang/String;

    const-string v6, "thumbnail_pic"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/zhangdan/preferential/data/model/p;->c:Ljava/lang/String;

    const-string v6, "user"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "profile_image_url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/zhangdan/preferential/data/model/p;->a:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    move-object v0, v1

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Lcom/zhangdan/preferential/data/model/l;

    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v2, p1}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/l;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->e()V

    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v2, v2, Lcom/zhangdan/preferential/ShopDetailActivity;->d:Lcom/a/a/a/a;

    invoke-virtual {v2}, Lcom/a/a/a/a;->c()Lcom/a/a/a/b/a;

    move-result-object v2

    iget-object v3, p1, Lcom/zhangdan/preferential/data/model/l;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->c(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    iget-object v4, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->c(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    invoke-interface {v2, v3}, Lcom/a/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->c(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->d(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->e(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/preferential/data/model/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->f(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/zhangdan/preferential/a/z;->a(Landroid/widget/TextView;Lcom/zhangdan/preferential/data/model/k;)V

    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v2}, Lcom/zhangdan/preferential/ShopDetailActivity;->g(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/widget/CustomStarView;

    move-result-object v2

    iget v3, p1, Lcom/zhangdan/preferential/data/model/k;->h:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Lcom/zhangdan/preferential/widget/CustomStarView;->a(I)V

    iget v2, p1, Lcom/zhangdan/preferential/data/model/k;->k:I

    if-eqz v2, :cond_4

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->h(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v2, p1, Lcom/zhangdan/preferential/data/model/l;->k:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0071

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0801c9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0c006f

    invoke-static {v0, v2, v4, v3, v5}, Lcom/zhangdan/preferential/a/z;->a(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_4
    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v0, p1}, Lcom/zhangdan/preferential/ShopDetailActivity;->b(Lcom/zhangdan/preferential/ShopDetailActivity;Lcom/zhangdan/preferential/data/model/l;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->i(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/ar;->a(Lcom/zhangdan/preferential/data/model/l;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->i(Lcom/zhangdan/preferential/ShopDetailActivity;)Lcom/zhangdan/preferential/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/preferential/ar;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->j(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->k(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    iget-object v3, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v3}, Lcom/zhangdan/preferential/ShopDetailActivity;->c(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p1, Lcom/zhangdan/preferential/data/model/l;->d:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/zhangdan/preferential/ShopDetailActivity;->a(Lcom/zhangdan/preferential/ShopDetailActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v2, v0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-static {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->h(Lcom/zhangdan/preferential/ShopDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected final onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/aq;->a:Lcom/zhangdan/preferential/ShopDetailActivity;

    invoke-virtual {v0}, Lcom/zhangdan/preferential/ShopDetailActivity;->d()V

    return-void
.end method
