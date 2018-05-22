<div class="container wrap">
    {if $smarty.session.Basket.items || $smarty.session.Basket.sets || true}
        <h1 class="liner smaller-liner liner-basket"><span>Оформление заказа</span></h1>
        <div class="basket-two-column">
            <div class="basket-first-column order">

                <div class="tabs tabs-order" id="prod-reviews">
                    <div class="tab-button-outer" id="prod-questions">
                        <ul class="tab-button">
                            <li class="is-active"><a href="#tab21">Я новый покупатель</a></li>
                            <li class="tab-quest"><a href="#tab22">Я постоянный клиент</a></li>
                        </ul>
                    </div>
                    <div id="tab21" class="tab-contents is-active form" style="">
                        <div class="tab-contents-wrap">
                            <form id="jform" action="" method="post">
                                <div class="tab-section">
                                    <div class="order-title"><span>1</span> Контактные данные</div>

                                    <div class="basket-two-column">

                                        <div class="">
                                            <label for="fullname">Фио*</label>
                                            <input id="fullname" type="text" class="input-min-width valid">
                                            <label for="mail">E-mail* <span>(для отслеживания заказа)</span></label>
                                            <input id="mail" type="email" class="email input-min-width valid">
                                        </div>
                                        <div class="">
                                            <label for="phone">Телефон* <span>(для подтверждения заказа)</span></label>
                                            <input id="phone" type="text" class="input-min-width numb phone valid">
                                            <label for="city">Город* <span>(для отслеживания заказа)</span></label>
                                            <select id="city" name="select" class="valid">
                                                <option value=""></option>
                                                <option value="Киев">Киев</option>
                                                <option value="Винницв">Винница</option>
                                                <option value="Черкасы">Черкасы</option>
                                            </select>
                                        </div>

                                    </div>

                                </div>
                                <div class="step-hidden step2-hidden tab-section valid">
                                    <div class="order-title"><span>2</span> Способы оплаты</div>
                                    <div class="close_deliver">
                                        <div class="flexibal">
                                            <input type="radio" id="new-payment-1" name="payment"
                                                   value="Наличными курьером">
                                            <label for="new-payment-1">Наличными курьером</label>
                                        </div>
                                        <div class="flexibal">
                                            <input type="radio" id="new-payment-2" name="payment" value="Банковская карта">
                                            <label for="new-payment-2">Банковская карта</label>
                                        </div>
                                        <div class="flexibal">
                                            <input type="radio" id="new-payment-3" name="payment" value="Кредит">
                                            <label for="new-payment-3">Кредит</label>
                                        </div>
                                    </div>

                                </div>
                                <div class="step-hidden step3-hidden tab-section tab-delivery valid">
                                    <div class="close_deliver">
                                        <div class="order-title"><span>3</span> Способы доставки</div>
                                        <div class="flexibal">
                                            <input type="radio" id="new-delivery-1" class="ShowOrHide delivery-show-select"
                                                   name="delivery" value="myDivId1">
                                            <label for="new-delivery-1">Самовывоз</label>
                                        </div>
                                        <div id="myDivId1" class="ShowOrHide delivery-detail basket-two-column">
                                            <div class="">
                                                <label for="new-city-self">Город</label>
                                                <select id="new-city-self" name="select">
                                                    <option value="Киев">Киев</option>
                                                    <option value="Винницв">Винницa</option>
                                                    <option value="Черкасы">Черкасы</option>
                                                </select>
                                            </div>
                                            <div class="">
                                                <label for="new-magazine-self">Адрес Магазина</label>
                                                <select id="new-magazine-self" name="select">
                                                    <option value="ул.Дегтяревская 25а">ул.Дегтяревская 25а</option>
                                                    <option value="ул.Попудренка 3">ул.Попудренка 3</option>
                                                    <option value="ул.Васильковская 12">ул.Васильковская 12</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="flexibal">
                                            <input type="radio" id="new-delivery-2" class="ShowOrHide delivery-show-select"
                                                   name="delivery"
                                                   value="myDivId2">
                                            <label for="new-delivery-2">Новая почта</label>
                                        </div>
                                        <div id="myDivId2" class="ShowOrHide delivery-detail basket-two-column">
                                            <div class="">
                                                <label for="new-city-np">Город</label>
                                                <select id="new-city-np" name="select">
                                                    <option value="Киев">Киев</option>
                                                    <option value="Винницa">Винницa</option>
                                                    <option value="Черкасы">Черкасы</option>
                                                </select>
                                            </div>
                                            <div class="">
                                                <label for="new-magazine-np">Отделение новой почты</label>
                                                <select id="new-magazine-np" name="select">
                                                    <option value="ул.Дегтяревская 25а">№ 15</option>
                                                    <option value="ул.Попудренка 3">№ 91</option>
                                                    <option value="ул.Васильковская 12">№ 150</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="flexibal">
                                            <input type="radio" id="new-delivery-3" class="ShowOrHide delivery-show-select"
                                                   name="delivery" value="myDivId3">
                                            <label for="new-delivery-3">Курьер</label>
                                        </div>
                                        <div id="myDivId3" class="ShowOrHide delivery-detail flexibal">
                                            <div class="delivery-adress-width">
                                                <label for="new-city-courier">Город</label>
                                                <select id="new-city-courier" name="select" class="input-min-width">
                                                    <option value="Киев">Киев</option>
                                                    <option value="Винницв">Винницa</option>
                                                    <option value="Черкасы">Черкасы</option>
                                                </select>
                                            </div>
                                            <div class="delivery-adress-width">
                                                <label for="new-street-courier">Улица*</label>
                                                <input id="new-street-courier" type="text" class="input-min-width">
                                            </div>
                                            <div class="delivery-adress-width">
                                                <label for="new-house-courier">Дом*</label>
                                                <input id="new-house-courier" type="text" class="input-min-width">
                                            </div>
                                            <div class="delivery-adress-width">
                                                <label for="new-flat-courier">Кв.*</label>
                                                <input id="new-flat-courier" type="text" class="input-min-width">
                                            </div>
                                        </div>
                                        <div class="flexibal">
                                            <input type="radio" id="new-delivery-4" class="ShowOrHide delivery-show-select"
                                                   name="delivery" value="myDivId4">
                                            <label for="new-delivery-4">Trade-in "ZAMENA"</label>
                                        </div>
                                        <div id="myDivId4" class="ShowOrHide delivery-detail flexibal">
                                            <div class="delivery-adress-width">
                                                <label for="new-city-trade">Город</label>
                                                <select id="new-city-trade" name="select" class="input-min-width">
                                                    <option value="Киев">Киев</option>
                                                    <option value="Винницв">Винницa</option>
                                                    <option value="Черкасы">Черкасы</option>
                                                </select>
                                            </div>
                                            <div class="delivery-adress-width">
                                                <label for="new-street-trade">Улица*</label>
                                                <input id="new-street-trade" type="text" class="input-min-width">
                                            </div>
                                            <div class="delivery-adress-width">
                                                <label for="new-house-trade">Дом*</label>
                                                <input id="new-house-trade" type="text" class="input-min-width">
                                            </div>
                                            <div class="delivery-adress-width">
                                                <label for="new-flat-trade">Кв.*</label>
                                                <input id="new-flat-trade" type="text" class="input-min-width">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="step-hidden step4-hidden tab-section">
                                    <div class="order-title"><span>4</span> Коментарии к заказу</div>
                                    <textarea rows="4" class="input-min-width"></textarea>
                                </div>

                                <div class="take-order">
                                    <div class="">
                                        Подтверждая заказ, я принимаю условия
                                        <a class="bluee">пользовательского соглашения</a>
                                    </div>
                                    <div class="">
                                        <input class="send bask acty without-icon" type="submit"
                                               value="Заказ подтверждаю">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div id="tab22" class="tab-contents">
                        <div class="tab-contents-wrap">
                            <div class="tab-section flexibal tab-new-client">
                                <div class="two-col">
                                    <div class="order-title"><span>1</span> Контактные данные</div>
                                    <form method="post" action="" id="orderformenter" name="order">
                                        <div class="">
                                            <label for="mail">E-mail</label>
                                            <input id="enter-email" type="email" class="input-min-width">
                                            <label for="pass">Пароль</label>
                                            <input id="pass" type="password" class="input-min-width" name="password">
                                        </div>
                                        <div class="flexibal flex-between">
                                            <input class="bask acty without-icon" type="submit" value="Войти">
                                            <a class="black-link">Забыли пароль?</a>
                                        </div>
                                    </form>
                                </div>
                                <div class="border-plus"><span>или</span></div>
                                <div class="flexibal two-col reg-social">
                                    <div class=""><p>Вы можете войти через социальную сеть</p></div>
                                    <div class="">
                                        <a><img src="/assets/img/main/fb-blue.png"></a>
                                        <a><img src="/assets/img/main/g-red.png"></a>
                                    </div>
                                </div>

                            </div>
                            <div class="step-hidden step2-hidden tab-section">
                                <div class="order-title"><span>2</span> Способы оплаты</div>
                                <div class="flexibal">
                                    <input type="radio" id="payment-1" name="payment" value="Наличными курьером">
                                    <label for="payment-1">Наличными курьером</label>
                                </div>
                                <div class="flexibal">
                                    <input type="radio" id="payment-2" name="payment" value="Банковская карта">
                                    <label for="payment-2">Банковская карта</label>
                                </div>
                                <div class="flexibal">
                                    <input type="radio" id="payment-3" name="payment" value="Кредит">
                                    <label for="payment-3">Кредит</label>
                                </div>
                            </div>
                            <div class="step-hidden step3-hidden tab-section tab-delivery">
                                <div class="order-title"><span>3</span> Способы доставки</div>
                                <div class="flexibal">
                                    <input type="radio" id="new-delivery-1-1" class="ShowOrHide delivery-show-select"
                                           name="delivery" value="myDivId1-1">
                                    <label for="new-delivery-1-1">Самовывоз</label>
                                </div>
                                <div id="myDivId1-1" class="ShowOrHide delivery-detail basket-two-column">
                                    <div class="">
                                        <label for="new-city-self-1">Город</label>
                                        <select id="new-city-self-1" name="select">
                                            <option value="Киев">Киев</option>
                                            <option value="Винницв">Винницa</option>
                                            <option value="Черкасы">Черкасы</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="new-magazine-self-1">Адрес Магазина</label>
                                        <select id="new-magazine-self-1" name="select">
                                            <option value="ул.Дегтяревская 25а">ул.Дегтяревская 25а</option>
                                            <option value="ул.Попудренка 3">ул.Попудренка 3</option>
                                            <option value="ул.Васильковская 12">ул.Васильковская 12</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="flexibal">
                                    <input type="radio" id="new-delivery-2-1" class="ShowOrHide delivery-show-select"
                                           name="delivery" value="myDivId2-1">
                                    <label for="new-delivery-2-1">Новая почта</label>
                                </div>
                                <div id="myDivId2-1" class="ShowOrHide delivery-detail basket-two-column">
                                    <div class="">
                                        <label for="new-city-np-1">Город</label>
                                        <select id="new-city-np-1" name="select">
                                            <option value="Киев">Киев</option>
                                            <option value="Винницa">Винницa</option>
                                            <option value="Черкасы">Черкасы</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label for="new-magazine-np-1">Отделение новой почты</label>
                                        <select id="new-magazine-np-1" name="select">
                                            <option value="ул.Дегтяревская 25а">№ 15</option>
                                            <option value="ул.Попудренка 3">№ 91</option>
                                            <option value="ул.Васильковская 12">№ 150</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="flexibal">
                                    <input type="radio" id="new-delivery-3-1" class="ShowOrHide delivery-show-select"
                                           name="delivery" value="myDivId3-1">
                                    <label for="new-delivery-3-1">Курьер</label>
                                </div>
                                <div id="myDivId3-1" class="ShowOrHide delivery-detail flexibal">
                                    <div class="delivery-adress-width">
                                        <label for="new-city-courier-1">Город</label>
                                        <select id="new-city-courier-1" name="select" class="input-min-width">
                                            <option value="Киев">Киев</option>
                                            <option value="Винницв">Винницa</option>
                                            <option value="Черкасы">Черкасы</option>
                                        </select>
                                    </div>
                                    <div class="delivery-adress-width">
                                        <label for="new-street-courier-1">Улица*</label>
                                        <input id="new-street-courier-1" type="text" class="input-min-width">
                                    </div>
                                    <div class="delivery-adress-width">
                                        <label for="new-house-courier-1">Дом*</label>
                                        <input id="new-house-courier-1" type="text" class="input-min-width">
                                    </div>
                                    <div class="delivery-adress-width">
                                        <label for="new-flat-courier-1">Кв.*</label>
                                        <input id="new-flat-courier-1" type="text" class="input-min-width">
                                    </div>
                                </div>
                                <div class="flexibal">
                                    <input type="radio" id="new-delivery-4-1" class="ShowOrHide delivery-show-select"
                                           name="delivery" value="myDivId4-1">
                                    <label for="new-delivery-4-1">Trade-in "ZAMENA"</label>
                                </div>
                                <div id="myDivId4-1" class="ShowOrHide delivery-detail flexibal">
                                    <div class="delivery-adress-width">
                                        <label for="new-city-trade-1">Город</label>
                                        <select id="new-city-trade-1" name="select" class="input-min-width">
                                            <option value="Киев">Киев</option>
                                            <option value="Винницв">Винницa</option>
                                            <option value="Черкасы">Черкасы</option>
                                        </select>
                                    </div>
                                    <div class="delivery-adress-width">
                                        <label for="new-street-trade-1">Улица*</label>
                                        <input id="new-street-trade-1" type="text" class="input-min-width">
                                    </div>
                                    <div class="delivery-adress-width">
                                        <label for="new-house-trade-1">Дом*</label>
                                        <input id="new-house-trade-1" type="text" class="input-min-width">
                                    </div>
                                    <div class="delivery-adress-width">
                                        <label for="new-flat-trade-1">Кв.*</label>
                                        <input id="new-flat-trade-1" type="text" class="input-min-width">
                                    </div>
                                </div>
                            </div>
                            <div class="step-hidden step4-hidden tab-section">
                                <div class="order-title"><span>4</span> Коментарии к заказу</div>
                                <textarea rows="4" class="input-min-width"></textarea>
                            </div>

                            <div class="take-order">
                                <div class="">
                                    Подтверждая заказ, я принимаю условия
                                    <a href="/page/confidentiality" class="bluee">пользовательского соглашения</a>
                                </div>
                                <div class="">
                                    <input class="bask acty without-icon" type="submit" value="Заказ подтверждаю">
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
            <div class="basket-last-column">
                <div class="basket-header">
                    <div class="basket-name">Наименование</div>
                    <div class="">Кол-во</div>
                    <div class="">Сумма (грн)</div>
                    <div class="">Удалить</div>
                </div>
                <div class="basket-table">


                </div>
                <div class="total-section">
                    <div class="blue-link">
                        <a class="bluee">Редактировать заказ</a>
                        <a class="bluee icon-question">
                            Использовать промокод
                            <span><img src="/assets/img/main/bluee-question.png"></span>
                        </a>
                        <a class="bluee icon-question">
                            Оплатить бонусами
                            <span><img src="/assets/img/main/bluee-question.png"></span>
                        </a>
                    </div>
                    <div class="">
                        <div class="take-order-delivery flexibal">
                            <div class="">По Киеву доставка <span>Бесплатно!</span></div>
                            <img src="/assets/img/orig3.png" alt="">
                        </div>
                        <div class="total-take">
                            <div class="total red">
                                Итого: <span class="count-total">0</span>грн
                            </div>
                        </div>
                    </div>
                </div>
                <div class="take-order">
                    <div class="">
                        Подтверждая заказ, я принимаю условия
                        <a href="/page/confidentiality" class="bluee">пользовательского соглашения</a>
                    </div>
                    <div class="">
                        <object type="lol/wut">
                            <a class="bask acty btn-dissable"
                               href="javascript:void(0)"><span>Заказ подтверждаю</span></a>
                        </object>
                    </div>
                </div>
            </div>
        </div>
    {else}
        <a href="https://590.ua/"><img src="https://590.ua/assets/media/emptybasket.png"></a>
    {/if}
    {include file='layouts/orig.tpl'}
</div>

<div class="doww"><img src="/assets/img/verh.png" alt=""></div>