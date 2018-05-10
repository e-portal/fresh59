$(window).on("load", function () {
    function e(e) {
        return hash = e.find('input[name="name"]').val(), reg = /^[a-zР В°-РЎРЏРўвЂРЎвЂќРЎвЂ“РЎвЂ”\s-`Р’Т‘РљСРІР‚в„ўРљСРІР‚в„ў']+$/i, !(!reg.test(hash) || " " === hash) || (e.find(".label-name").addClass("error"), setTimeout(function () {
            e.find(".label-name").removeClass("error")
        }, 3e3), !1)
    }

    function t(e) {
        return hash = e.find('input[name="mail"]').val(), reg = /^[\w._-]+@[\w-]+\.[a-z]{2,4}$/, reg2 = /^[\w._-]+@[\w-]+\.[a-z]{2,4}\.[a-z]{2,4}$/, !(!reg.test(hash) && !reg2.test(hash)) || (e.find(".label-mail").addClass("error"), setTimeout(function () {
            e.find(".label-mail").removeClass("error")
        }, 3e3), !1)
    }

    function n(e) {
        return hash = e.find('input[name="phone"]').val(), reg = /^[(][0-9]{3}[)][\s][0-9]{3}[-][0-9]{2}[-][0-9]{2}$/, console.log(hash.length), 0 == hash.length || (!!reg.test(hash) || (e.find(".label-tel").addClass("error"), setTimeout(function () {
            e.find(".label-tel").removeClass("error")
        }, 3e3), !1))
    }

    function i(e) {
        return !e.find('textarea[name="message"]').length || (hash = e.find('textarea[name="message"]').val(), !(!hash || " " === hash) || (e.find(".label-message").addClass("error"), setTimeout(function () {
            e.find(".label-message").removeClass("error")
        }, 3e3), !1))
    }

    var a = $(".form");

    /*a.find("textarea").parent().append('<div class="hide-textarea"><span></span></div>');var r=a.find(".hide-textarea span");a.find("textarea").on("keyup",function(){var e=r[0].getBoundingClientRect().height;r.html($(this).val()),$(this).css({height:e+"px"})}),a.find("textarea").on("blur",function(){var e=r[0].getBoundingClientRect().height;r.html($(this).val()),$(this).css({height:e+"px"})}),*/
    a.find("#js-name").inputmask({
        regex: "[A-Za-zР С’-Р Р‡Р В°-РЎРЏРўвЂРЎвЂќРЎвЂ“РЎвЂ”РўС’Р вЂћР вЂ Р вЂЎ ._`Р’Т‘РљСРІР‚в„ўРљСРІР‚в„ў'-]+",
        placeholder: ""
    }), a.find("#js-tel").inputmask({mask: "(999) 999-99-99"}), a.find("#js-mail").inputmask({
        regex: "[a-zA-Z0-9@._-]+",
        placeholder: ""
    }), a.find("#js-message").inputmask({
        regex: "[A-Za-zР С’-Р Р‡Р В°-РЎРЏРўвЂРЎвЂќРЎвЂ“РЎвЂ”РўС’Р вЂћР вЂ Р вЂЎ ._`Р’Т‘РљСРІР‚в„ўРљСРІР‚в„ў'-]+",
        placeholder: ""
    });
    a.find("input, textarea").on("blur", function () {
        $(this)[0].value.length > 0 && " " !== $(this)[0].value ? (console.log("label true"), $(this).siblings("label").addClass("active")) : $(this).siblings("label").removeClass("active")
    }), $("#form-submit").click(function (r) {
        if (r.preventDefault(r), function () {
                var r = e(a), o = t(a), s = n(a), l = i(a);
                return r && s && o && l
            }()) {
            var o = a.serialize();
            return o += "&action=send_mail", $.ajax({
                data: o,
                url: "/send_mail.php",
                method: "POST",
                beforeSend: function () {
                    a.find("#form-submit").attr("disabled", "disabled")
                },
                success: function (e) {
                    if (console.log("ans is: " + e), e) {
                        var e = JSON.parse(e);
                        console.log("success"), "success" in e ? (console.log("letter delivered"), $(".thank-note").addClass("active"), a.find("input, textarea").siblings("label").removeClass("active"), a.addClass("success"), a[0].reset()) : (console.log("letter didn't deliver"), a.addClass("error"))
                    } else console.log("letter didn't deliver"), a.addClass("error")
                },
                error: function () {
                    console.log("error"), a.addClass("error")
                },
                complete: function () {
                    console.log("complete"), setTimeout(function () {
                        a.removeClass("success error"), a.find("#form-submit").removeAttr("disabled")
                    }, 4e3)
                }
            }), !1
        }
    })
}), function (e) {
    "function" == typeof define && define.amd ? define(["./dependencyLibs/inputmask.dependencyLib", "./global/window", "./global/document"], e) : "object" == typeof exports ? module.exports = e(require("./dependencyLibs/inputmask.dependencyLib"), require("./global/window"), require("./global/document")) : window.Inputmask = e(window.dependencyLib || jQuery, window, document)
}(function (e, t, n, i) {
    function a(t, n, o) {
        if (!(this instanceof a)) return new a(t, n, o);
        this.el = i, this.events = {}, this.maskset = i, this.refreshValue = !1, !0 !== o && (e.isPlainObject(t) ? n = t : (n = n || {}, n.alias = t), this.opts = e.extend(!0, {}, this.defaults, n), this.noMasksCache = n && n.definitions !== i, this.userOptions = n || {}, this.isRTL = this.opts.numericInput, r(this.opts.alias, n, this.opts))
    }

    function r(t, n, o) {
        var s = a.prototype.aliases[t];
        return s ? (s.alias && r(s.alias, i, o), e.extend(!0, o, s), e.extend(!0, o, n), !0) : (null === o.mask && (o.mask = t), !1)
    }

    function o(t, n) {
        function r(t, r, o) {
            var s = !1;
            if (null !== t && "" !== t || (s = null !== o.regex, s ? (t = o.regex, t = t.replace(/^(\^)(.*)(\$)$/, "$2")) : t = "*{*}"), 1 === t.length && !1 === o.greedy && 0 !== o.repeat && (o.placeholder = ""), o.repeat > 0 || "*" === o.repeat || "+" === o.repeat) {
                var l = "*" === o.repeat ? 0 : "+" === o.repeat ? 1 : o.repeat;
                t = o.groupmarker.start + t + o.groupmarker.end + o.quantifiermarker.start + l + "," + o.repeat + o.quantifiermarker.end
            }
            var u, c = s ? "regex_" + o.regex : o.numericInput ? t.split("").reverse().join("") : t;
            return a.prototype.masksCache[c] === i || !0 === n ? (u = {
                mask: t,
                maskToken: a.prototype.analyseMask(t, s, o),
                validPositions: {},
                _buffer: i,
                buffer: i,
                tests: {},
                metadata: r,
                maskLength: i
            }, !0 !== n && (a.prototype.masksCache[c] = u, u = e.extend(!0, {}, a.prototype.masksCache[c]))) : u = e.extend(!0, {}, a.prototype.masksCache[c]), u
        }

        if (e.isFunction(t.mask) && (t.mask = t.mask(t)), e.isArray(t.mask)) {
            if (t.mask.length > 1) {
                t.keepStatic = null === t.keepStatic || t.keepStatic;
                var o = t.groupmarker.start;
                return e.each(t.numericInput ? t.mask.reverse() : t.mask, function (n, a) {
                    o.length > 1 && (o += t.groupmarker.end + t.alternatormarker + t.groupmarker.start), o += a.mask === i || e.isFunction(a.mask) ? a : a.mask
                }), o += t.groupmarker.end, r(o, t.mask, t)
            }
            t.mask = t.mask.pop()
        }
        return t.mask && t.mask.mask !== i && !e.isFunction(t.mask.mask) ? r(t.mask.mask, t.mask, t) : r(t.mask, t.mask, t)
    }

    function s(r, o, l) {
        function h(e, t, n) {
            t = t || 0;
            var a, r, o, s = [], u = 0, c = v();
            -1 === (W = z !== i ? z.maxLength : i) && (W = i);
            do {
                !0 === e && d().validPositions[u] ? (o = d().validPositions[u], r = o.match, a = o.locator.slice(), s.push(!0 === n ? o.input : !1 === n ? r.nativeDef : G(u, r))) : (o = b(u, a, u - 1), r = o.match, a = o.locator.slice(), (!1 === l.jitMasking || u < c || "number" == typeof l.jitMasking && isFinite(l.jitMasking) && l.jitMasking > u) && s.push(!1 === n ? r.nativeDef : G(u, r))), u++
            } while ((W === i || u < W) && (null !== r.fn || "" !== r.def) || t > u);
            return "" === s[s.length - 1] && s.pop(), d().maskLength = u + 1, s
        }

        function d() {
            return o
        }

        function m(e) {
            var t = d();
            t.buffer = i, !0 !== e && (t.validPositions = {}, t.p = 0)
        }

        function v(e, t, n) {
            var a = -1, r = -1, o = n || d().validPositions;
            e === i && (e = -1);
            for (var s in o) {
                var l = parseInt(s);
                o[l] && (t || !0 !== o[l].generatedInput) && (l <= e && (a = l), l >= e && (r = l))
            }
            return -1 !== a && e - a > 1 || r < e ? a : r
        }

        function g(t, n, a, r) {
            var o, s = t, u = e.extend(!0, {}, d().validPositions), c = !1;
            for (d().p = t, o = n - 1; o >= s; o--) d().validPositions[o] !== i && (!0 !== a && (!d().validPositions[o].match.optionality && function (e) {
                var t = d().validPositions[e];
                if (t !== i && null === t.match.fn) {
                    var n = d().validPositions[e - 1], a = d().validPositions[e + 1];
                    return n !== i && a !== i
                }
                return !1
            }(o) || !1 === l.canClearPosition(d(), o, v(), r, l)) || delete d().validPositions[o]);
            for (m(!0), o = s + 1; o <= v();) {
                for (; d().validPositions[s] !== i;) s++;
                if (o < s && (o = s + 1), d().validPositions[o] === i && M(o)) o++; else {
                    var f = b(o);
                    !1 === c && u[s] && u[s].match.def === f.match.def ? (d().validPositions[s] = e.extend(!0, {}, u[s]), d().validPositions[s].input = f.input, delete d().validPositions[o], o++) : P(s, f.match.def) ? !1 !== O(s, f.input || G(o), !0) && (delete d().validPositions[o], o++, c = !0) : M(o) || (o++, s--), s++
                }
            }
            m(!0)
        }

        function k(e, t) {
            for (var n, a = e, r = v(), o = d().validPositions[r] || C(0)[0], s = o.alternation !== i ? o.locator[o.alternation].toString().split(",") : [], u = 0; u < a.length && (n = a[u], !(n.match && (l.greedy && !0 !== n.match.optionalQuantifier || (!1 === n.match.optionality || !1 === n.match.newBlockMarker) && !0 !== n.match.optionalQuantifier) && (o.alternation === i || o.alternation !== n.alternation || n.locator[o.alternation] !== i && w(n.locator[o.alternation].toString().split(","), s))) || !0 === t && (null !== n.match.fn || /[0-9a-bA-Z]/.test(n.match.def))); u++) ;
            return n
        }

        function b(e, t, n) {
            return d().validPositions[e] || k(C(e, t ? t.slice() : t, n))
        }

        function y(e) {
            return d().validPositions[e] ? d().validPositions[e] : C(e)[0]
        }

        function P(e, t) {
            for (var n = !1, i = C(e), a = 0; a < i.length; a++) if (i[a].match && i[a].match.def === t) {
                n = !0;
                break
            }
            return n
        }

        function C(t, n, a) {
            function r(n, a, o, u) {
                function f(o, u, v) {
                    function g(t, n) {
                        var i = 0 === e.inArray(t, n.matches);
                        return i || e.each(n.matches, function (e, a) {
                            if (!0 === a.isQuantifier && (i = g(t, n.matches[e - 1]))) return !1
                        }), i
                    }

                    function k(t, n, a) {
                        var r, o;
                        if (d().validPositions[t - 1] && a && d().tests[t]) for (var s = d().validPositions[t - 1].locator, l = d().tests[t][0].locator, u = 0; u < a; u++) if (s[u] !== l[u]) return s.slice(a + 1);
                        return (d().tests[t] || d().validPositions[t]) && e.each(d().tests[t] || [d().validPositions[t]], function (e, t) {
                            var s = a !== i ? a : t.alternation,
                                l = t.locator[s] !== i ? t.locator[s].toString().indexOf(n) : -1;
                            (o === i || l < o) && -1 !== l && (r = t, o = l)
                        }), r ? r.locator.slice((a !== i ? a : r.alternation) + 1) : a !== i ? k(t, n) : i
                    }

                    if (c > 1e4) throw"Inputmask: There is probably an error in your mask definition or in the code. Create an issue on github with an example of the mask you are using. " + d().mask;
                    if (c === t && o.matches === i) return p.push({match: o, locator: u.reverse(), cd: m}), !0;
                    if (o.matches !== i) {
                        if (o.isGroup && v !== o) {
                            if (o = f(n.matches[e.inArray(o, n.matches) + 1], u)) return !0
                        } else if (o.isOptional) {
                            var b = o;
                            if (o = r(o, a, u, v)) {
                                if (s = p[p.length - 1].match, !g(s, b)) return !0;
                                h = !0, c = t
                            }
                        } else if (o.isAlternator) {
                            var y, P = o, C = [], x = p.slice(), E = u.length, _ = a.length > 0 ? a.shift() : -1;
                            if (-1 === _ || "string" == typeof _) {
                                var A, w = c, O = a.slice(), M = [];
                                if ("string" == typeof _) M = _.split(","); else for (A = 0; A < P.matches.length; A++) M.push(A);
                                for (var S = 0; S < M.length; S++) {
                                    if (A = parseInt(M[S]), p = [], a = k(c, A, E) || O.slice(), !0 !== (o = f(P.matches[A] || n.matches[A], [A].concat(u), v) || o) && o !== i && M[M.length - 1] < P.matches.length) {
                                        var j = e.inArray(o, n.matches) + 1;
                                        n.matches.length > j && (o = f(n.matches[j], [j].concat(u.slice(1, u.length)), v)) && (M.push(j.toString()), e.each(p, function (e, t) {
                                            t.alternation = u.length - 1
                                        }))
                                    }
                                    y = p.slice(), c = w, p = [];
                                    for (var D = 0; D < y.length; D++) {
                                        var T = y[D], G = !1;
                                        T.alternation = T.alternation || E;
                                        for (var I = 0; I < C.length; I++) {
                                            var B = C[I];
                                            if ("string" != typeof _ || -1 !== e.inArray(T.locator[T.alternation].toString(), M)) {
                                                if (function (e, t) {
                                                        return e.match.nativeDef === t.match.nativeDef || e.match.def === t.match.nativeDef || e.match.nativeDef === t.match.def
                                                    }(T, B)) {
                                                    G = !0, T.alternation == B.alternation && -1 === B.locator[B.alternation].toString().indexOf(T.locator[T.alternation]) && (B.locator[B.alternation] = B.locator[B.alternation] + "," + T.locator[T.alternation], B.alternation = T.alternation), T.match.nativeDef === B.match.def && (T.locator[T.alternation] = B.locator[B.alternation], C.splice(C.indexOf(B), 1, T));
                                                    break
                                                }
                                                if (T.match.def === B.match.def) {
                                                    G = !1;
                                                    break
                                                }
                                                if (function (e, n) {
                                                        return null === e.match.fn && null !== n.match.fn && n.match.fn.test(e.match.def, d(), t, !1, l, !1)
                                                    }(T, B) || function (e, n) {
                                                        return null !== e.match.fn && null !== n.match.fn && n.match.fn.test(e.match.def.replace(/[\[\]]/g, ""), d(), t, !1, l, !1)
                                                    }(T, B)) {
                                                    T.alternation == B.alternation && -1 === T.locator[T.alternation].toString().indexOf(B.locator[B.alternation].toString().split("")[0]) && (T.na = T.na || T.locator[T.alternation].toString(), -1 === T.na.indexOf(T.locator[T.alternation].toString().split("")[0]) && (T.na = T.na + "," + T.locator[B.alternation].toString().split("")[0]), G = !0, T.locator[T.alternation] = B.locator[B.alternation].toString().split("")[0] + "," + T.locator[T.alternation], C.splice(C.indexOf(B), 0, T));
                                                    break
                                                }
                                            }
                                        }
                                        G || C.push(T)
                                    }
                                }
                                "string" == typeof _ && (C = e.map(C, function (t, n) {
                                    if (isFinite(n)) {
                                        var a = t.alternation, r = t.locator[a].toString().split(",");
                                        t.locator[a] = i, t.alternation = i;
                                        for (var o = 0; o < r.length; o++) -1 !== e.inArray(r[o], M) && (t.locator[a] !== i ? (t.locator[a] += ",", t.locator[a] += r[o]) : t.locator[a] = parseInt(r[o]), t.alternation = a);
                                        if (t.locator[a] !== i) return t
                                    }
                                })), p = x.concat(C), c = t, h = p.length > 0, o = C.length > 0, a = O.slice()
                            } else o = f(P.matches[_] || n.matches[_], [_].concat(u), v);
                            if (o) return !0
                        } else if (o.isQuantifier && v !== n.matches[e.inArray(o, n.matches) - 1]) for (var L = o, F = a.length > 0 ? a.shift() : 0; F < (isNaN(L.quantifier.max) ? F + 1 : L.quantifier.max) && c <= t; F++) {
                            var R = n.matches[e.inArray(L, n.matches) - 1];
                            if (o = f(R, [F].concat(u), R)) {
                                if (s = p[p.length - 1].match, s.optionalQuantifier = F > L.quantifier.min - 1, g(s, R)) {
                                    if (F > L.quantifier.min - 1) {
                                        h = !0, c = t;
                                        break
                                    }
                                    return !0
                                }
                                return !0
                            }
                        } else if (o = r(o, a, u, v)) return !0
                    } else c++
                }

                for (var v = a.length > 0 ? a.shift() : 0; v < n.matches.length; v++) if (!0 !== n.matches[v].isQuantifier) {
                    var g = f(n.matches[v], [v].concat(o), u);
                    if (g && c === t) return g;
                    if (c > t) break
                }
            }

            function o(e) {
                if (l.keepStatic && t > 0 && e.length > 1 + ("" === e[e.length - 1].match.def ? 1 : 0) && !0 !== e[0].match.optionality && !0 !== e[0].match.optionalQuantifier && null === e[0].match.fn && !/[0-9a-bA-Z]/.test(e[0].match.def)) {
                    if (d().validPositions[t - 1] === i) return [k(e)];
                    if (d().validPositions[t - 1].alternation === e[0].alternation) return [k(e)];
                    if (d().validPositions[t - 1]) return [k(e)]
                }
                return e
            }

            var s, u = d().maskToken, c = n ? a : 0, f = n ? n.slice() : [0], p = [], h = !1, m = n ? n.join("") : "";
            if (t > -1) {
                if (n === i) {
                    for (var v, g = t - 1; (v = d().validPositions[g] || d().tests[g]) === i && g > -1;) g--;
                    v !== i && g > -1 && (f = function (t) {
                        var n = [];
                        return e.isArray(t) || (t = [t]), t.length > 0 && (t[0].alternation === i ? (n = k(t.slice()).locator.slice(), 0 === n.length && (n = t[0].locator.slice())) : e.each(t, function (e, t) {
                            if ("" !== t.def) if (0 === n.length) n = t.locator.slice(); else for (var i = 0; i < n.length; i++) t.locator[i] && -1 === n[i].toString().indexOf(t.locator[i]) && (n[i] += "," + t.locator[i])
                        })), n
                    }(v), m = f.join(""), c = g)
                }
                if (d().tests[t] && d().tests[t][0].cd === m) return o(d().tests[t]);
                for (var b = f.shift(); b < u.length && !(r(u[b], f, [b]) && c === t || c > t); b++) ;
            }
            return (0 === p.length || h) && p.push({
                match: {
                    fn: null,
                    cardinality: 0,
                    optionality: !0,
                    casing: null,
                    def: "",
                    placeholder: ""
                }, locator: [], cd: m
            }), n !== i && d().tests[t] ? o(e.extend(!0, [], p)) : (d().tests[t] = e.extend(!0, [], p), o(d().tests[t]))
        }

        function x() {
            return d()._buffer === i && (d()._buffer = h(!1, 1), d().buffer === i && (d().buffer = d()._buffer.slice())), d()._buffer
        }

        function E(e) {
            return d().buffer !== i && !0 !== e || (d().buffer = h(!0, v(), !0)), d().buffer
        }

        function _(e, t, n) {
            var a, r;
            if (!0 === e) m(), e = 0, t = n.length; else for (a = e; a < t; a++) delete d().validPositions[a];
            for (r = e, a = e; a < t; a++) if (m(!0), n[a] !== l.skipOptionalPartCharacter) {
                var o = O(r, n[a], !0, !0);
                !1 !== o && (m(!0), r = o.caret !== i ? o.caret : o.pos + 1)
            }
        }

        function A(t, n, i) {
            switch (l.casing || n.casing) {
                case"upper":
                    t = t.toUpperCase();
                    break;
                case"lower":
                    t = t.toLowerCase();
                    break;
                case"title":
                    var r = d().validPositions[i - 1];
                    t = 0 === i || r && r.input === String.fromCharCode(a.keyCode.SPACE) ? t.toUpperCase() : t.toLowerCase();
                    break;
                default:
                    if (e.isFunction(l.casing)) {
                        var o = Array.prototype.slice.call(arguments);
                        o.push(d().validPositions), t = l.casing.apply(this, o)
                    }
            }
            return t
        }

        function w(t, n, a) {
            for (var r, o = l.greedy ? n : n.slice(0, 1), s = !1, u = a !== i ? a.split(",") : [], c = 0; c < u.length; c++) -1 !== (r = t.indexOf(u[c])) && t.splice(r, 1);
            for (var f = 0; f < t.length; f++) if (-1 !== e.inArray(t[f], o)) {
                s = !0;
                break
            }
            return s
        }

        function O(t, n, r, o, s) {
            function u(e) {
                var t = Z ? e.begin - e.end > 1 || e.begin - e.end == 1 : e.end - e.begin > 1 || e.end - e.begin == 1;
                return t && 0 === e.begin && e.end === d().maskLength ? "full" : t
            }

            function c(n, a, r) {
                var s = !1;
                return e.each(C(n), function (c, p) {
                    for (var h = p.match, k = a ? 1 : 0, b = "", y = h.cardinality; y > k; y--) b += D(n - (y - 1));
                    if (a && (b += a), E(!0), !1 !== (s = null != h.fn ? h.fn.test(b, d(), n, r, l, u(t)) : (a === h.def || a === l.skipOptionalPartCharacter) && "" !== h.def && {
                            c: G(n, h, !0) || h.def,
                            pos: n
                        })) {
                        var P = s.c !== i ? s.c : a;
                        P = P === l.skipOptionalPartCharacter && null === h.fn ? G(n, h, !0) || h.def : P;
                        var C = n, x = E();
                        if (s.remove !== i && (e.isArray(s.remove) || (s.remove = [s.remove]), e.each(s.remove.sort(function (e, t) {
                                return t - e
                            }), function (e, t) {
                                g(t, t + 1, !0)
                            })), s.insert !== i && (e.isArray(s.insert) || (s.insert = [s.insert]), e.each(s.insert.sort(function (e, t) {
                                return e - t
                            }), function (e, t) {
                                O(t.pos, t.c, !0, o)
                            })), s.refreshFromBuffer) {
                            var w = s.refreshFromBuffer;
                            if (_(!0 === w ? w : w.start, w.end, x), s.pos === i && s.c === i) return s.pos = v(), !1;
                            if ((C = s.pos !== i ? s.pos : n) !== n) return s = e.extend(s, O(C, P, !0, o)), !1
                        } else if (!0 !== s && s.pos !== i && s.pos !== n && (C = s.pos, _(n, C, E().slice()), C !== n)) return s = e.extend(s, O(C, P, !0)), !1;
                        return (!0 === s || s.pos !== i || s.c !== i) && (c > 0 && m(!0), f(C, e.extend({}, p, {input: A(P, h, C)}), o, u(t)) || (s = !1), !1)
                    }
                }), s
            }

            function f(t, n, a, r) {
                if (r || l.insertMode && d().validPositions[t] !== i && a === i) {
                    var o, s = e.extend(!0, {}, d().validPositions), u = v(i, !0);
                    for (o = t; o <= u; o++) delete d().validPositions[o];
                    d().validPositions[t] = e.extend(!0, {}, n);
                    var c, f = !0, h = d().validPositions, g = !1, k = d().maskLength;
                    for (o = c = t; o <= u; o++) {
                        var b = s[o];
                        if (b !== i) for (var y = c; y < d().maskLength && (null === b.match.fn && h[o] && (!0 === h[o].match.optionalQuantifier || !0 === h[o].match.optionality) || null != b.match.fn);) {
                            if (y++, !1 === g && s[y] && s[y].match.def === b.match.def) d().validPositions[y] = e.extend(!0, {}, s[y]), d().validPositions[y].input = b.input, p(y), c = y, f = !0; else if (P(y, b.match.def)) {
                                var C = O(y, b.input, !0, !0);
                                f = !1 !== C, c = C.caret || C.insert ? v() : y, g = !0
                            } else if (!(f = !0 === b.generatedInput) && y >= d().maskLength - 1) break;
                            if (d().maskLength < k && (d().maskLength = k), f) break
                        }
                        if (!f) break
                    }
                    if (!f) return d().validPositions = e.extend(!0, {}, s), m(!0), !1
                } else d().validPositions[t] = e.extend(!0, {}, n);
                return m(!0), !0
            }

            function p(t) {
                for (var n = t - 1; n > -1 && !d().validPositions[n]; n--) ;
                var a, r;
                for (n++; n < t; n++) d().validPositions[n] === i && (!1 === l.jitMasking || l.jitMasking > n) && (r = C(n, b(n - 1).locator, n - 1).slice(), "" === r[r.length - 1].match.def && r.pop(), (a = k(r)) && (a.match.def === l.radixPointDefinitionSymbol || !M(n, !0) || e.inArray(l.radixPoint, E()) < n && a.match.fn && a.match.fn.test(G(n), d(), n, !1, l)) && !1 !== (y = c(n, G(n, a.match, !0) || (null == a.match.fn ? a.match.def : "" !== G(n) ? G(n) : E()[n]), !0)) && (d().validPositions[y.pos || n].generatedInput = !0))
            }

            r = !0 === r;
            var h = t;
            t.begin !== i && (h = Z && !u(t) ? t.end : t.begin);
            var y = !0, x = e.extend(!0, {}, d().validPositions);
            if (e.isFunction(l.preValidation) && !r && !0 !== o && (y = l.preValidation(E(), h, n, u(t), l)), !0 === y) {
                if (p(h), u(t) && (K(i, a.keyCode.DELETE, t), h = d().p), h < d().maskLength && (W === i || h < W) && (y = c(h, n, r), (!r || !0 === o) && !1 === y)) {
                    var j = d().validPositions[h];
                    if (!j || null !== j.match.fn || j.match.def !== n && n !== l.skipOptionalPartCharacter) {
                        if ((l.insertMode || d().validPositions[S(h)] === i) && !M(h, !0)) for (var T = h + 1, I = S(h); T <= I; T++) if (!1 !== (y = c(T, n, r))) {
                            !function (t, n) {
                                var a = d().validPositions[n];
                                if (a) for (var r = a.locator, o = r.length, s = t; s < n; s++) if (d().validPositions[s] === i && !M(s, !0)) {
                                    var l = C(s).slice(), u = k(l, !0), p = -1;
                                    "" === l[l.length - 1].match.def && l.pop(), e.each(l, function (e, t) {
                                        for (var n = 0; n < o; n++) {
                                            if (t.locator[n] === i || !w(t.locator[n].toString().split(","), r[n].toString().split(","), t.na)) {
                                                var a = r[n], s = u.locator[n], l = t.locator[n];
                                                a - s > Math.abs(a - l) && (u = t);
                                                break
                                            }
                                            p < n && (p = n, u = t)
                                        }
                                    }), u = e.extend({}, u, {input: G(s, u.match, !0) || u.match.def}), u.generatedInput = !0, f(s, u, !0), d().validPositions[n] = i, c(n, a.input, !0)
                                }
                            }(h, y.pos !== i ? y.pos : T), h = T;
                            break
                        }
                    } else y = {caret: S(h)}
                }
                !1 === y && l.keepStatic && !r && !0 !== s && (y = function (t, n, a) {
                    var r, s, u, c, f, p, h, g, k = e.extend(!0, {}, d().validPositions), b = !1, y = v();
                    for (c = d().validPositions[y]; y >= 0; y--) if ((u = d().validPositions[y]) && u.alternation !== i) {
                        if (r = y, s = d().validPositions[r].alternation, c.locator[u.alternation] !== u.locator[u.alternation]) break;
                        c = u
                    }
                    if (s !== i) {
                        g = parseInt(r);
                        var P = c.locator[c.alternation || s] !== i ? c.locator[c.alternation || s] : h[0];
                        P.length > 0 && (P = P.split(",")[0]);
                        var x = d().validPositions[g], E = d().validPositions[g - 1];
                        e.each(C(g, E ? E.locator : i, g - 1), function (r, u) {
                            h = u.locator[s] ? u.locator[s].toString().split(",") : [];
                            for (var c = 0; c < h.length; c++) {
                                var y = [], C = 0, E = 0, _ = !1;
                                if (P < h[c] && (u.na === i || -1 === e.inArray(h[c], u.na.split(",")) || -1 === e.inArray(P.toString(), h))) {
                                    d().validPositions[g] = e.extend(!0, {}, u);
                                    var A = d().validPositions[g].locator;
                                    for (d().validPositions[g].locator[s] = parseInt(h[c]), null == u.match.fn ? (x.input !== u.match.def && (_ = !0, !0 !== x.generatedInput && y.push(x.input)), E++, d().validPositions[g].generatedInput = !/[0-9a-bA-Z]/.test(u.match.def), d().validPositions[g].input = u.match.def) : d().validPositions[g].input = x.input, f = g + 1; f < v(i, !0) + 1; f++) p = d().validPositions[f], p && !0 !== p.generatedInput && /[0-9a-bA-Z]/.test(p.input) ? y.push(p.input) : f < t && C++, delete d().validPositions[f];
                                    for (_ && y[0] === u.match.def && y.shift(), m(!0), b = !0; y.length > 0;) {
                                        var w = y.shift();
                                        if (w !== l.skipOptionalPartCharacter && !(b = O(v(i, !0) + 1, w, !1, o, !0))) break
                                    }
                                    if (b) {
                                        d().validPositions[g].locator = A;
                                        var M = v(t) + 1;
                                        for (f = g + 1; f < v() + 1; f++) ((p = d().validPositions[f]) === i || null == p.match.fn) && f < t + (E - C) && E++;
                                        t += E - C, b = O(t > M ? M : t, n, a, o, !0)
                                    }
                                    if (b) return !1;
                                    m(), d().validPositions = e.extend(!0, {}, k)
                                }
                            }
                        })
                    }
                    return b
                }(h, n, r)), !0 === y && (y = {pos: h})
            }
            if (e.isFunction(l.postValidation) && !1 !== y && !r && !0 !== o) {
                var B = l.postValidation(E(!0), y, l);
                if (B.refreshFromBuffer && B.buffer) {
                    var L = B.refreshFromBuffer;
                    _(!0 === L ? L : L.start, L.end, B.buffer)
                }
                y = !0 === B ? y : B
            }
            return y && y.pos === i && (y.pos = h), !1 === y && (m(!0), d().validPositions = e.extend(!0, {}, x)), y
        }

        function M(e, t) {
            var n = b(e).match;
            if ("" === n.def && (n = y(e).match), null != n.fn) return n.fn;
            if (!0 !== t && e > -1) {
                var i = C(e);
                return i.length > 1 + ("" === i[i.length - 1].match.def ? 1 : 0)
            }
            return !1
        }

        function S(e, t) {
            var n = d().maskLength;
            if (e >= n) return n;
            var i = e;
            for (C(n + 1).length > 1 && (h(!0, n + 1, !0), n = d().maskLength); ++i < n && (!0 === t && (!0 !== y(i).match.newBlockMarker || !M(i)) || !0 !== t && !M(i));) ;
            return i
        }

        function j(e, t) {
            var n, i = e;
            if (i <= 0) return 0;
            for (; --i > 0 && (!0 === t && !0 !== y(i).match.newBlockMarker || !0 !== t && !M(i) && (n = C(i), n.length < 2 || 2 === n.length && "" === n[1].match.def));) ;
            return i
        }

        function D(e) {
            return d().validPositions[e] === i ? G(e) : d().validPositions[e].input
        }

        function T(t, n, a, r, o) {
            if (r && e.isFunction(l.onBeforeWrite)) {
                var s = l.onBeforeWrite(r, n, a, l);
                if (s) {
                    if (s.refreshFromBuffer) {
                        var u = s.refreshFromBuffer;
                        _(!0 === u ? u : u.start, u.end, s.buffer || n), n = E(!0)
                    }
                    a !== i && (a = s.caret !== i ? s.caret : a)
                }
            }
            t !== i && (t.inputmask._valueSet(n.join("")), a === i || r !== i && "blur" === r.type ? H(t, n, a) : p && "input" === r.type ? setTimeout(function () {
                L(t, a)
            }, 0) : L(t, a), !0 === o && (J = !0, e(t).trigger("input")))
        }

        function G(t, n, a) {
            if (n = n || y(t).match, n.placeholder !== i || !0 === a) return e.isFunction(n.placeholder) ? n.placeholder(l) : n.placeholder;
            if (null === n.fn) {
                if (t > -1 && d().validPositions[t] === i) {
                    var r, o = C(t), s = [];
                    if (o.length > 1 + ("" === o[o.length - 1].match.def ? 1 : 0)) for (var u = 0; u < o.length; u++) if (!0 !== o[u].match.optionality && !0 !== o[u].match.optionalQuantifier && (null === o[u].match.fn || r === i || !1 !== o[u].match.fn.test(r.match.def, d(), t, !0, l)) && (s.push(o[u]), null === o[u].match.fn && (r = o[u]), s.length > 1 && /[0-9a-bA-Z]/.test(s[0].match.def))) return l.placeholder.charAt(t % l.placeholder.length)
                }
                return n.def
            }
            return l.placeholder.charAt(t % l.placeholder.length)
        }

        function I(t, r, o, s, u) {
            function c(e, t) {
                return -1 !== x().slice(e, S(e)).join("").indexOf(t) && !M(e) && y(e).match.nativeDef === t.charAt(t.length - 1)
            }

            var f = s.slice(), p = "", h = 0, g = i;
            if (m(), d().p = S(-1), !o) if (!0 !== l.autoUnmask) {
                var k = x().slice(0, S(-1)).join(""), P = f.join("").match(new RegExp("^" + a.escapeRegex(k), "g"));
                P && P.length > 0 && (f.splice(0, P.length * k.length), h = S(h))
            } else h = S(h);
            if (e.each(f, function (n, a) {
                    if (a !== i) {
                        var r = new e.Event("_checkval");
                        r.which = a.charCodeAt(0), p += a;
                        var s = v(i, !0), u = d().validPositions[s], f = b(s + 1, u ? u.locator.slice() : i, s);
                        if (!c(h, p) || o || l.autoUnmask) {
                            var k = o ? n : null == f.match.fn && f.match.optionality && s + 1 < d().p ? s + 1 : d().p;
                            g = ne.keypressEvent.call(t, r, !0, !1, o, k), h = k + 1, p = ""
                        } else g = ne.keypressEvent.call(t, r, !0, !1, !0, s + 1);
                        if (!1 !== g && !o && e.isFunction(l.onBeforeWrite)) {
                            var y = g.forwardPosition;
                            if (g = l.onBeforeWrite(r, E(), g.forwardPosition, l), g.forwardPosition = y, g && g.refreshFromBuffer) {
                                var P = g.refreshFromBuffer;
                                _(!0 === P ? P : P.start, P.end, g.buffer), m(!0), g.caret && (d().p = g.caret, g.forwardPosition = g.caret)
                            }
                        }
                    }
                }), r) {
                var C = i;
                n.activeElement === t && g && (C = l.numericInput ? j(g.forwardPosition) : g.forwardPosition), T(t, E(), C, u || new e.Event("checkval"), u && "input" === u.type)
            }
        }

        function B(t) {
            if (t) {
                if (t.inputmask === i) return t.value;
                t.inputmask && t.inputmask.refreshValue && ne.setValueEvent.call(t)
            }
            var n = [], a = d().validPositions;
            for (var r in a) a[r].match && null != a[r].match.fn && n.push(a[r].input);
            var o = 0 === n.length ? "" : (Z ? n.reverse() : n).join("");
            if (e.isFunction(l.onUnMask)) {
                var s = (Z ? E().slice().reverse() : E()).join("");
                o = l.onUnMask(s, o, l)
            }
            return o
        }

        function L(e, a, r, o) {
            function s(e) {
                return !0 === o || !Z || "number" != typeof e || l.greedy && "" === l.placeholder || (e = E().join("").length - e), e
            }

            var c;
            if (a === i) return e.setSelectionRange ? (a = e.selectionStart, r = e.selectionEnd) : t.getSelection ? (c = t.getSelection().getRangeAt(0), c.commonAncestorContainer.parentNode !== e && c.commonAncestorContainer !== e || (a = c.startOffset, r = c.endOffset)) : n.selection && n.selection.createRange && (c = n.selection.createRange(), a = 0 - c.duplicate().moveStart("character", -e.inputmask._valueGet().length), r = a + c.text.length), {
                begin: s(a),
                end: s(r)
            };
            if (a.begin !== i && (r = a.end, a = a.begin), "number" == typeof a) {
                a = s(a), r = s(r), r = "number" == typeof r ? r : a;
                var f = parseInt(((e.ownerDocument.defaultView || t).getComputedStyle ? (e.ownerDocument.defaultView || t).getComputedStyle(e, null) : e.currentStyle).fontSize) * r;
                if (e.scrollLeft = f > e.scrollWidth ? f : 0, u || !1 !== l.insertMode || a !== r || r++, e.setSelectionRange) e.selectionStart = a, e.selectionEnd = r; else if (t.getSelection) {
                    if (c = n.createRange(), e.firstChild === i || null === e.firstChild) {
                        var p = n.createTextNode("");
                        e.appendChild(p)
                    }
                    c.setStart(e.firstChild, a < e.inputmask._valueGet().length ? a : e.inputmask._valueGet().length), c.setEnd(e.firstChild, r < e.inputmask._valueGet().length ? r : e.inputmask._valueGet().length), c.collapse(!0);
                    var h = t.getSelection();
                    h.removeAllRanges(), h.addRange(c)
                } else e.createTextRange && (c = e.createTextRange(), c.collapse(!0), c.moveEnd("character", r), c.moveStart("character", a), c.select());
                H(e, i, {begin: a, end: r})
            }
        }

        function F(t) {
            var n, a, r = E(), o = r.length, s = v(), l = {}, u = d().validPositions[s],
                c = u !== i ? u.locator.slice() : i;
            for (n = s + 1; n < r.length; n++) a = b(n, c, n - 1), c = a.locator.slice(), l[n] = e.extend(!0, {}, a);
            var f = u && u.alternation !== i ? u.locator[u.alternation] : i;
            for (n = o - 1; n > s && (a = l[n], (a.match.optionality || a.match.optionalQuantifier && a.match.newBlockMarker || f && (f !== l[n].locator[u.alternation] && null != a.match.fn || null === a.match.fn && a.locator[u.alternation] && w(a.locator[u.alternation].toString().split(","), f.toString().split(",")) && "" !== C(n)[0].def)) && r[n] === G(n, a.match)); n--) o--;
            return t ? {l: o, def: l[o] ? l[o].match : i} : o
        }

        function R(e) {
            for (var t, n = F(), a = e.length, r = d().validPositions[v()]; n < a && !M(n, !0) && (t = r !== i ? b(n, r.locator.slice(""), r) : y(n)) && !0 !== t.match.optionality && (!0 !== t.match.optionalQuantifier && !0 !== t.match.newBlockMarker || n + 1 === a && "" === (r !== i ? b(n + 1, r.locator.slice(""), r) : y(n + 1)).match.def);) n++;
            for (; (t = d().validPositions[n - 1]) && t && t.match.optionality && t.input === l.skipOptionalPartCharacter;) n--;
            return e.splice(n), e
        }

        function N(t) {
            if (e.isFunction(l.isComplete)) return l.isComplete(t, l);
            if ("*" === l.repeat) return i;
            var n = !1, a = F(!0), r = j(a.l);
            if (a.def === i || a.def.newBlockMarker || a.def.optionality || a.def.optionalQuantifier) {
                n = !0;
                for (var o = 0; o <= r; o++) {
                    var s = b(o).match;
                    if (null !== s.fn && d().validPositions[o] === i && !0 !== s.optionality && !0 !== s.optionalQuantifier || null === s.fn && t[o] !== G(o, s)) {
                        n = !1;
                        break
                    }
                }
            }
            return n
        }

        function K(t, n, r, o) {
            if ((l.numericInput || Z) && (n === a.keyCode.BACKSPACE ? n = a.keyCode.DELETE : n === a.keyCode.DELETE && (n = a.keyCode.BACKSPACE), Z)) {
                var s = r.end;
                r.end = r.begin, r.begin = s
            }
            n === a.keyCode.BACKSPACE && (r.end - r.begin < 1 || !1 === l.insertMode) ? (r.begin = j(r.begin), d().validPositions[r.begin] !== i && d().validPositions[r.begin].input === l.groupSeparator && r.begin--) : n === a.keyCode.DELETE && r.begin === r.end && (r.end = M(r.end, !0) && d().validPositions[r.end] && d().validPositions[r.end].input !== l.radixPoint ? r.end + 1 : S(r.end) + 1, d().validPositions[r.begin] !== i && d().validPositions[r.begin].input === l.groupSeparator && r.end++), g(r.begin, r.end, !1, o), !0 !== o && function () {
                if (l.keepStatic) {
                    for (var n = [], a = v(-1, !0), r = e.extend(!0, {}, d().validPositions), o = d().validPositions[a]; a >= 0; a--) {
                        var s = d().validPositions[a];
                        if (s) {
                            if (!0 !== s.generatedInput && /[0-9a-bA-Z]/.test(s.input) && n.push(s.input), delete d().validPositions[a], s.alternation !== i && s.locator[s.alternation] !== o.locator[s.alternation]) break;
                            o = s
                        }
                    }
                    if (a > -1) for (d().p = S(v(-1, !0)); n.length > 0;) {
                        var u = new e.Event("keypress");
                        u.which = n.pop().charCodeAt(0), ne.keypressEvent.call(t, u, !0, !1, !1, d().p)
                    } else d().validPositions = e.extend(!0, {}, r)
                }
            }();
            var u = v(r.begin, !0);
            if (u < r.begin) d().p = S(u); else if (!0 !== o) for (d().p = r.begin; d().p < u && d().validPositions[d().p] === i;) d().p++
        }

        function V(i) {
            function a(e) {
                var t, a = n.createElement("span");
                for (var r in s) isNaN(r) && -1 !== r.indexOf("font") && (a.style[r] = s[r]);
                a.style.textTransform = s.textTransform, a.style.letterSpacing = s.letterSpacing, a.style.position = "absolute", a.style.height = "auto", a.style.width = "auto", a.style.visibility = "hidden", a.style.whiteSpace = "nowrap", n.body.appendChild(a);
                var o, l = i.inputmask._valueGet(), u = 0;
                for (t = 0, o = l.length; t <= o; t++) {
                    if (a.innerHTML += l.charAt(t) || "_", a.offsetWidth >= e) {
                        var c = e - u, f = a.offsetWidth - e;
                        a.innerHTML = l.charAt(t), c -= a.offsetWidth / 3, t = c < f ? t - 1 : t;
                        break
                    }
                    u = a.offsetWidth
                }
                return n.body.removeChild(a), t
            }

            function r() {
                Q.style.position = "absolute", Q.style.top = o.top + "px", Q.style.left = o.left + "px", Q.style.width = parseInt(i.offsetWidth) - parseInt(s.paddingLeft) - parseInt(s.paddingRight) - parseInt(s.borderLeftWidth) - parseInt(s.borderRightWidth) + "px", Q.style.height = parseInt(i.offsetHeight) - parseInt(s.paddingTop) - parseInt(s.paddingBottom) - parseInt(s.borderTopWidth) - parseInt(s.borderBottomWidth) + "px", Q.style.lineHeight = Q.style.height, Q.style.zIndex = isNaN(s.zIndex) ? -1 : s.zIndex - 1, Q.style.webkitAppearance = "textfield", Q.style.mozAppearance = "textfield", Q.style.Appearance = "textfield"
            }

            var o = e(i).position(), s = (i.ownerDocument.defaultView || t).getComputedStyle(i, null);
            Q = n.createElement("div"), n.body.appendChild(Q);
            for (var u in s) s.hasOwnProperty(u) && isNaN(u) && "cssText" !== u && -1 == u.indexOf("webkit") && (Q.style[u] = s[u]);
            i.style.backgroundColor = "transparent", i.style.color = "transparent", i.style.webkitAppearance = "caret", i.style.mozAppearance = "caret", i.style.Appearance = "caret", r(), e(t).on("resize", function (n) {
                o = e(i).position(), s = (i.ownerDocument.defaultView || t).getComputedStyle(i, null), r()
            }), e(i).on("click", function (e) {
                return L(i, a(e.clientX)), ne.clickEvent.call(this, [e])
            }), e(i).on("keydown", function (e) {
                e.shiftKey || !1 === l.insertMode || setTimeout(function () {
                    H(i)
                }, 0)
            })
        }

        function H(e, t, a) {
            function r() {
                s || null !== c.fn && f.input !== i ? s && null !== c.fn && f.input !== i && (s = !1, o += "</span>") : (s = !0, o += "<span class='im-static''>")
            }

            if (Q !== i) {
                t = t || E(), a === i ? a = L(e) : a.begin === i && (a = {begin: a, end: a});
                var o = "", s = !1;
                if ("" != t) {
                    var u, c, f, p = 0, h = v();
                    do {
                        p === a.begin && n.activeElement === e && (o += "<span class='im-caret' style='border-right-width: 1px;border-right-style: solid;'></span>"), d().validPositions[p] ? (f = d().validPositions[p], c = f.match, u = f.locator.slice(), r(), o += f.input) : (f = b(p, u, p - 1), c = f.match, u = f.locator.slice(), (!1 === l.jitMasking || p < h || "number" == typeof l.jitMasking && isFinite(l.jitMasking) && l.jitMasking > p) && (r(), o += G(p, c))), p++
                    } while ((W === i || p < W) && (null !== c.fn || "" !== c.def) || h > p)
                }
                Q.innerHTML = o
            }
        }

        o = o || this.maskset, l = l || this.opts;
        var U, $, W, Q, q, z = this.el, Z = this.isRTL, X = !1, J = !1, Y = !1, ee = !1, te = {
            on: function (t, n, r) {
                var o = function (t) {
                    if (this.inputmask === i && "FORM" !== this.nodeName) {
                        var n = e.data(this, "_inputmask_opts");
                        n ? new a(n).mask(this) : te.off(this)
                    } else {
                        if ("setvalue" === t.type || "FORM" === this.nodeName || !(this.disabled || this.readOnly && !("keydown" === t.type && t.ctrlKey && 67 === t.keyCode || !1 === l.tabThrough && t.keyCode === a.keyCode.TAB))) {
                            switch (t.type) {
                                case"input":
                                    if (!0 === J) return J = !1, t.preventDefault();
                                    break;
                                case"keydown":
                                    X = !1, J = !1;
                                    break;
                                case"keypress":
                                    if (!0 === X) return t.preventDefault();
                                    X = !0;
                                    break;
                                case"click":
                                    if (c || f) {
                                        var o = this, s = arguments;
                                        return setTimeout(function () {
                                            r.apply(o, s)
                                        }, 0), !1
                                    }
                            }
                            var u = r.apply(this, arguments);
                            return !1 === u && (t.preventDefault(), t.stopPropagation()), u
                        }
                        t.preventDefault()
                    }
                };
                t.inputmask.events[n] = t.inputmask.events[n] || [], t.inputmask.events[n].push(o), -1 !== e.inArray(n, ["submit", "reset"]) ? null != t.form && e(t.form).on(n, o) : e(t).on(n, o)
            }, off: function (t, n) {
                if (t.inputmask && t.inputmask.events) {
                    var i;
                    n ? (i = [], i[n] = t.inputmask.events[n]) : i = t.inputmask.events, e.each(i, function (n, i) {
                        for (; i.length > 0;) {
                            var a = i.pop();
                            -1 !== e.inArray(n, ["submit", "reset"]) ? null != t.form && e(t.form).off(n, a) : e(t).off(n, a)
                        }
                        delete t.inputmask.events[n]
                    })
                }
            }
        }, ne = {
            keydownEvent: function (t) {
                var i = this, r = e(i), o = t.keyCode, s = L(i);
                if (o === a.keyCode.BACKSPACE || o === a.keyCode.DELETE || f && o === a.keyCode.BACKSPACE_SAFARI || t.ctrlKey && o === a.keyCode.X && !function (e) {
                        var t = n.createElement("input"), i = "oncut", a = i in t;
                        return a || (t.setAttribute(i, "return;"), a = "function" == typeof t[i]), t = null, a
                    }()) t.preventDefault(), K(i, o, s), T(i, E(!0), d().p, t, i.inputmask._valueGet() !== E().join("")), i.inputmask._valueGet() === x().join("") ? r.trigger("cleared") : !0 === N(E()) && r.trigger("complete"); else if (o === a.keyCode.END || o === a.keyCode.PAGE_DOWN) {
                    t.preventDefault();
                    var u = S(v());
                    l.insertMode || u !== d().maskLength || t.shiftKey || u--, L(i, t.shiftKey ? s.begin : u, u, !0)
                } else o === a.keyCode.HOME && !t.shiftKey || o === a.keyCode.PAGE_UP ? (t.preventDefault(), L(i, 0, t.shiftKey ? s.begin : 0, !0)) : (l.undoOnEscape && o === a.keyCode.ESCAPE || 90 === o && t.ctrlKey) && !0 !== t.altKey ? (I(i, !0, !1, U.split("")), r.trigger("click")) : o !== a.keyCode.INSERT || t.shiftKey || t.ctrlKey ? !0 === l.tabThrough && o === a.keyCode.TAB ? (!0 === t.shiftKey ? (null === y(s.begin).match.fn && (s.begin = S(s.begin)), s.end = j(s.begin, !0),
s.begin=j(s.end,!0)):(s.begin=S(s.begin,!0),s.end=S(s.begin,!0),s.end<d().maskLength&&s.end--),s.begin<d().maskLength&&(t.preventDefault(),L(i,s.begin,s.end))):t.shiftKey||!1===l.insertMode&&(o===a.keyCode.RIGHT?setTimeout(function(){var e=L(i);L(i,e.begin)},0):o===a.keyCode.LEFT&&setTimeout(function(){var e=L(i);L(i,Z?e.begin+1:e.begin-1)},0)):(l.insertMode=!l.insertMode,L(i,l.insertMode||s.begin!==d().maskLength?s.begin:s.begin-1));l.onKeyDown.call(this,t,E(),L(i).begin,l),Y=-1!==e.inArray(o,l.ignorables)},keypressEvent:function(t,n,r,o,s){var u=this,c=e(u),f=t.which||t.charCode||t.keyCode;if(!(!0===n||t.ctrlKey&&t.altKey)&&(t.ctrlKey||t.metaKey||Y))return f===a.keyCode.ENTER&&U!==E().join("")&&(U=E().join(""),setTimeout(function(){c.trigger("change")},0)),!0;if(f){46===f&&!1===t.shiftKey&&""!==l.radixPoint&&(f=l.radixPoint.charCodeAt(0));var p,h=n?{begin:s,end:s}:L(u),v=String.fromCharCode(f);d().writeOutBuffer=!0;var g=O(h,v,o);if(!1!==g&&(m(!0),p=g.caret!==i?g.caret:n?g.pos+1:S(g.pos),d().p=p),!1!==r&&(setTimeout(function(){l.onKeyValidation.call(u,f,g,l)},0),d().writeOutBuffer&&!1!==g)){var k=E();T(u,k,l.numericInput&&g.caret===i?j(p):p,t,!0!==n),!0!==n&&setTimeout(function(){!0===N(k)&&c.trigger("complete")},0)}if(t.preventDefault(),n)return!1!==g&&(g.forwardPosition=p),g}},pasteEvent:function(n){var i,a=this,r=n.originalEvent||n,o=e(a),s=a.inputmask._valueGet(!0),u=L(a);Z&&(i=u.end,u.end=u.begin,u.begin=i);var c=s.substr(0,u.begin),f=s.substr(u.end,s.length);if(c===(Z?x().reverse():x()).slice(0,u.begin).join("")&&(c=""),f===(Z?x().reverse():x()).slice(u.end).join("")&&(f=""),Z&&(i=c,c=f,f=i),t.clipboardData&&t.clipboardData.getData)s=c+t.clipboardData.getData("Text")+f;else{if(!r.clipboardData||!r.clipboardData.getData)return!0;s=c+r.clipboardData.getData("text/plain")+f}var p=s;if(e.isFunction(l.onBeforePaste)){if(!1===(p=l.onBeforePaste(s,l)))return n.preventDefault();p||(p=s)}return I(a,!1,!1,Z?p.split("").reverse():p.toString().split("")),T(a,E(),S(v()),n,U!==E().join("")),!0===N(E())&&o.trigger("complete"),n.preventDefault()},inputFallBackEvent:function(t){var n=this,i=n.inputmask._valueGet();if(E().join("")!==i){var r=L(n);if("."===i.charAt(r.begin-1)&&""!==l.radixPoint&&(i=i.split(""),i[r.begin-1]=l.radixPoint.charAt(0),i=i.join("")),i.charAt(r.begin-1)===l.radixPoint&&i.length>E().length){var o=new e.Event("keypress");return o.which=l.radixPoint.charCodeAt(0),ne.keypressEvent.call(n,o,!0,!0,!1,r.begin),!1}if(i=i.replace(new RegExp("("+a.escapeRegex(x().join(""))+")*"),""),c){var s=i.replace(E().join(""),"");if(1===s.length){var o=new e.Event("keypress");return o.which=s.charCodeAt(0),ne.keypressEvent.call(n,o,!0,!0,!1,d().validPositions[r.begin-1]?r.begin:r.begin-1),!1}}if(r.begin>i.length&&(L(n,i.length),r=L(n)),E().length-i.length!=1||i.charAt(r.begin)===E()[r.begin]||i.charAt(r.begin+1)===E()[r.begin]||M(r.begin)){var u=[],f=[],m=E().join(""),v=h(!0,1).join("");for(u.push(i.substr(0,r.begin)),u.push(i.substr(r.begin)),f.push(m.substr(0,r.begin)),f.push(m.substr(r.begin));null===i.match(a.escapeRegex(v)+"$");)v=v.slice(1);i=i.replace(v,""),e.isFunction(l.onBeforeMask)&&(i=l.onBeforeMask(i,l)||i),I(n,!0,!1,i.split(""),t);var g=L(n).begin,k=n.inputmask._valueGet(),b=k.indexOf(u[0]);if(0===b&&g!==u[0].length)L(n,u[0].length),p&&setTimeout(function(){L(n,u[0].length)},0);else{for(;null===k.match(a.escapeRegex(u[1])+"$");)u[1]=u[1].substr(1);var y=k.indexOf(u[1]);-1!==y&&""!==u[1]&&g>y&&y>b&&(L(n,y),p&&setTimeout(function(){L(n,y)},0))}!0===N(E())&&e(n).trigger("complete")}else t.keyCode=a.keyCode.BACKSPACE,ne.keydownEvent.call(n,t);t.preventDefault()}},setValueEvent:function(t){this.inputmask.refreshValue=!1;var n=this,i=n.inputmask._valueGet(!0);e.isFunction(l.onBeforeMask)&&(i=l.onBeforeMask(i,l)||i),i=i.split(""),I(n,!0,!1,Z?i.reverse():i),U=E().join(""),(l.clearMaskOnLostFocus||l.clearIncomplete)&&n.inputmask._valueGet()===x().join("")&&n.inputmask._valueSet("")},focusEvent:function(e){var t=this,n=t.inputmask._valueGet();l.showMaskOnFocus&&(!l.showMaskOnHover||l.showMaskOnHover&&""===n)&&(t.inputmask._valueGet()!==E().join("")?T(t,E(),S(v())):!1===ee&&L(t,S(v()))),!0===l.positionCaretOnTab&&!1===ee&&(T(t,E(),L(t)),ne.clickEvent.apply(t,[e,!0])),U=E().join("")},mouseleaveEvent:function(e){var t=this;if(ee=!1,l.clearMaskOnLostFocus&&n.activeElement!==t){var i=E().slice(),a=t.inputmask._valueGet();a!==t.getAttribute("placeholder")&&""!==a&&(-1===v()&&a===x().join("")?i=[]:R(i),T(t,i))}},clickEvent:function(t,a){function r(t){if(""!==l.radixPoint){var n=d().validPositions;if(n[t]===i||n[t].input===G(t)){if(t<S(-1))return!0;var a=e.inArray(l.radixPoint,E());if(-1!==a){for(var r in n)if(a<r&&n[r].input!==G(r))return!1;return!0}}}return!1}var o=this;setTimeout(function(){if(n.activeElement===o){var e=L(o);if(a&&(Z?e.end=e.begin:e.begin=e.end),e.begin===e.end)switch(l.positionCaretOnClick){case"none":break;case"radixFocus":if(r(e.begin)){var t=E().join("").indexOf(l.radixPoint);L(o,l.numericInput?S(t):t);break}default:var s=e.begin,u=v(s,!0),c=S(u);if(s<c)L(o,M(s)||M(s-1)?s:S(s));else{var f=G(c),p=d().validPositions[u],h=b(c,p?p.match.locator:i,p);if(""!==f&&E()[c]!==f&&!0!==h.match.optionalQuantifier||!M(c)&&h.match.def===f){var m=S(c);s>=m&&(c=m)}L(o,c)}}}},0)},dblclickEvent:function(e){var t=this;setTimeout(function(){L(t,0,S(v()))},0)},cutEvent:function(i){var r=this,o=e(r),s=L(r),l=i.originalEvent||i,u=t.clipboardData||l.clipboardData,c=Z?E().slice(s.end,s.begin):E().slice(s.begin,s.end);u.setData("text",Z?c.reverse().join(""):c.join("")),n.execCommand&&n.execCommand("copy"),K(r,a.keyCode.DELETE,s),T(r,E(),d().p,i,U!==E().join("")),r.inputmask._valueGet()===x().join("")&&o.trigger("cleared")},blurEvent:function(t){var n=e(this),a=this;if(a.inputmask){var r=a.inputmask._valueGet(),o=E().slice();""!==r&&(l.clearMaskOnLostFocus&&(-1===v()&&r===x().join("")?o=[]:R(o)),!1===N(o)&&(setTimeout(function(){n.trigger("incomplete")},0),l.clearIncomplete&&(m(),o=l.clearMaskOnLostFocus?[]:x().slice())),T(a,o,i,t)),U!==E().join("")&&(U=o.join(""),n.trigger("change"))}},mouseenterEvent:function(e){var t=this;ee=!0,n.activeElement!==t&&l.showMaskOnHover&&t.inputmask._valueGet()!==E().join("")&&T(t,E())},submitEvent:function(e){U!==E().join("")&&$.trigger("change"),l.clearMaskOnLostFocus&&-1===v()&&z.inputmask._valueGet&&z.inputmask._valueGet()===x().join("")&&z.inputmask._valueSet(""),l.removeMaskOnSubmit&&(z.inputmask._valueSet(z.inputmask.unmaskedvalue(),!0),setTimeout(function(){T(z,E())},0))},resetEvent:function(e){z.inputmask.refreshValue=!0,setTimeout(function(){$.trigger("setvalue")},0)}};if(r!==i)switch(r.action){case"isComplete":return z=r.el,N(E());case"unmaskedvalue":return z!==i&&r.value===i||(q=r.value,q=(e.isFunction(l.onBeforeMask)?l.onBeforeMask(q,l)||q:q).split(""),I(i,!1,!1,Z?q.reverse():q),e.isFunction(l.onBeforeWrite)&&l.onBeforeWrite(i,E(),0,l)),B(z);case"mask":!function(t){te.off(t);var a=function(t,a){var r=t.getAttribute("type"),o="INPUT"===t.tagName&&-1!==e.inArray(r,a.supportsInputType)||t.isContentEditable||"TEXTAREA"===t.tagName;if(!o)if("INPUT"===t.tagName){var s=n.createElement("input");s.setAttribute("type",r),o="text"===s.type,s=null}else o="partial";return!1!==o&&function(t){function r(){return this.inputmask?this.inputmask.opts.autoUnmask?this.inputmask.unmaskedvalue():-1!==v()||!0!==a.nullable?n.activeElement===this&&a.clearMaskOnLostFocus?(Z?R(E().slice()).reverse():R(E().slice())).join(""):s.call(this):"":s.call(this)}function o(t){l.call(this,t),this.inputmask&&e(this).trigger("setvalue")}var s,l;if(!t.inputmask.__valueGet){if(!0!==a.noValuePatching){if(Object.getOwnPropertyDescriptor){"function"!=typeof Object.getPrototypeOf&&(Object.getPrototypeOf="object"==typeof"test".__proto__?function(e){return e.__proto__}:function(e){return e.constructor.prototype});var u=Object.getPrototypeOf?Object.getOwnPropertyDescriptor(Object.getPrototypeOf(t),"value"):i;u&&u.get&&u.set?(s=u.get,l=u.set,Object.defineProperty(t,"value",{get:r,set:o,configurable:!0})):"INPUT"!==t.tagName&&(s=function(){return this.textContent},l=function(e){this.textContent=e},Object.defineProperty(t,"value",{get:r,set:o,configurable:!0}))}else n.__lookupGetter__&&t.__lookupGetter__("value")&&(s=t.__lookupGetter__("value"),l=t.__lookupSetter__("value"),t.__defineGetter__("value",r),t.__defineSetter__("value",o));t.inputmask.__valueGet=s,t.inputmask.__valueSet=l}t.inputmask._valueGet=function(e){return Z&&!0!==e?s.call(this.el).split("").reverse().join(""):s.call(this.el)},t.inputmask._valueSet=function(e,t){l.call(this.el,null===e||e===i?"":!0!==t&&Z?e.split("").reverse().join(""):e)},s===i&&(s=function(){return this.value},l=function(e){this.value=e},function(t){if(e.valHooks&&(e.valHooks[t]===i||!0!==e.valHooks[t].inputmaskpatch)){var n=e.valHooks[t]&&e.valHooks[t].get?e.valHooks[t].get:function(e){return e.value},r=e.valHooks[t]&&e.valHooks[t].set?e.valHooks[t].set:function(e,t){return e.value=t,e};e.valHooks[t]={get:function(e){if(e.inputmask){if(e.inputmask.opts.autoUnmask)return e.inputmask.unmaskedvalue();var t=n(e);return-1!==v(i,i,e.inputmask.maskset.validPositions)||!0!==a.nullable?t:""}return n(e)},set:function(t,n){var i,a=e(t);return i=r(t,n),t.inputmask&&a.trigger("setvalue"),i},inputmaskpatch:!0}}}(t.type),function(t){te.on(t,"mouseenter",function(t){var n=e(this);this.inputmask._valueGet()!==E().join("")&&n.trigger("setvalue")})}(t))}}(t),o}(t,l);if(!1!==a&&(z=t,$=e(z),!0===l.colorMask&&V(z),p&&(z.hasOwnProperty("inputmode")&&(z.inputmode=l.inputmode,z.setAttribute("inputmode",l.inputmode)),"rtfm"===l.androidHack&&(!0!==l.colorMask&&V(z),z.type="password")),!0===a&&(te.on(z,"submit",ne.submitEvent),te.on(z,"reset",ne.resetEvent),te.on(z,"mouseenter",ne.mouseenterEvent),te.on(z,"blur",ne.blurEvent),te.on(z,"focus",ne.focusEvent),te.on(z,"mouseleave",ne.mouseleaveEvent),!0!==l.colorMask&&te.on(z,"click",ne.clickEvent),te.on(z,"dblclick",ne.dblclickEvent),te.on(z,"paste",ne.pasteEvent),te.on(z,"dragdrop",ne.pasteEvent),te.on(z,"drop",ne.pasteEvent),te.on(z,"cut",ne.cutEvent),te.on(z,"complete",l.oncomplete),te.on(z,"incomplete",l.onincomplete),te.on(z,"cleared",l.oncleared),p||!0===l.inputEventOnly||(te.on(z,"keydown",ne.keydownEvent),te.on(z,"keypress",ne.keypressEvent)),te.on(z,"compositionstart",e.noop),te.on(z,"compositionupdate",e.noop),te.on(z,"compositionend",e.noop),te.on(z,"keyup",e.noop),te.on(z,"input",ne.inputFallBackEvent),te.on(z,"beforeinput",e.noop)),te.on(z,"setvalue",ne.setValueEvent),U=x().join(""),""!==z.inputmask._valueGet(!0)||!1===l.clearMaskOnLostFocus||n.activeElement===z)){var r=e.isFunction(l.onBeforeMask)?l.onBeforeMask(z.inputmask._valueGet(!0),l)||z.inputmask._valueGet(!0):z.inputmask._valueGet(!0);""!==r&&I(z,!0,!1,Z?r.split("").reverse():r.split(""));var o=E().slice();U=o.join(""),!1===N(o)&&l.clearIncomplete&&m(),l.clearMaskOnLostFocus&&n.activeElement!==z&&(-1===v()?o=[]:R(o)),T(z,o),n.activeElement===z&&L(z,S(v()))}}(z);break;case"format":return q=(e.isFunction(l.onBeforeMask)?l.onBeforeMask(r.value,l)||r.value:r.value).split(""),I(i,!0,!1,Z?q.reverse():q),r.metadata?{value:Z?E().slice().reverse().join(""):E().join(""),metadata:s.call(this,{action:"getmetadata"},o,l)}:Z?E().slice().reverse().join(""):E().join("");case"isValid":r.value?(q=r.value.split(""),I(i,!0,!0,Z?q.reverse():q)):r.value=E().join("");for(var ie=E(),ae=F(),re=ie.length-1;re>ae&&!M(re);re--);return ie.splice(ae,re+1-ae),N(ie)&&r.value===E().join("");case"getemptymask":return x().join("");case"remove":return z&&z.inputmask&&($=e(z),z.inputmask._valueSet(l.autoUnmask?B(z):z.inputmask._valueGet(!0)),te.off(z),Object.getOwnPropertyDescriptor&&Object.getPrototypeOf?Object.getOwnPropertyDescriptor(Object.getPrototypeOf(z),"value")&&z.inputmask.__valueGet&&Object.defineProperty(z,"value",{get:z.inputmask.__valueGet,set:z.inputmask.__valueSet,configurable:!0}):n.__lookupGetter__&&z.__lookupGetter__("value")&&z.inputmask.__valueGet&&(z.__defineGetter__("value",z.inputmask.__valueGet),z.__defineSetter__("value",z.inputmask.__valueSet)),z.inputmask=i),z;case"getmetadata":if(e.isArray(o.metadata)){var oe=h(!0,0,!1).join("");return e.each(o.metadata,function(e,t){if(t.mask===oe)return oe=t,!1}),oe}return o.metadata}}var l=navigator.userAgent,u=/mobile/i.test(l),c=/iemobile/i.test(l),f=/iphone/i.test(l)&&!c,p=/android/i.test(l)&&!c;return a.prototype={dataAttribute:"data-inputmask",defaults:{placeholder:"_",optionalmarker:{start:"[",end:"]"},quantifiermarker:{start:"{",end:"}"},groupmarker:{start:"(",end:")"},alternatormarker:"|",escapeChar:"\\",mask:null,regex:null,oncomplete:e.noop,onincomplete:e.noop,oncleared:e.noop,repeat:0,greedy:!0,autoUnmask:!1,removeMaskOnSubmit:!1,clearMaskOnLostFocus:!0,insertMode:!0,clearIncomplete:!1,alias:null,onKeyDown:e.noop,onBeforeMask:null,onBeforePaste:function(t,n){return e.isFunction(n.onBeforeMask)?n.onBeforeMask(t,n):t},onBeforeWrite:null,onUnMask:null,showMaskOnFocus:!0,showMaskOnHover:!0,onKeyValidation:e.noop,skipOptionalPartCharacter:" ",numericInput:!1,rightAlign:!1,undoOnEscape:!0,radixPoint:"",radixPointDefinitionSymbol:i,groupSeparator:"",keepStatic:null,positionCaretOnTab:!0,tabThrough:!1,supportsInputType:["text","tel","password"],ignorables:[8,9,13,19,27,33,34,35,36,37,38,39,40,45,46,93,112,113,114,115,116,117,118,119,120,121,122,123,0,229],isComplete:null,canClearPosition:e.noop,preValidation:null,postValidation:null,staticDefinitionSymbol:i,jitMasking:!1,nullable:!0,inputEventOnly:!1,noValuePatching:!1,positionCaretOnClick:"lvp",casing:null,inputmode:"verbatim",colorMask:!1,androidHack:!1},definitions:{9:{validator:"[0-9]",cardinality:1,definitionSymbol:"*"},a:{validator:"[A-Za-zР С’-РЎРЏР РѓРЎвЂР“Р‚-Р“С—Р’Вµ]",cardinality:1,definitionSymbol:"*"},"*":{validator:function(){return!0},cardinality:1}},aliases:{},masksCache:{},mask:function(l){function u(n,a,o,s){function l(e,a){null!==(a=a!==i?a:n.getAttribute(s+"-"+e))&&("string"==typeof a&&(0===e.indexOf("on")?a=t[a]:"false"===a?a=!1:"true"===a&&(a=!0)),o[e]=a)}("rtl"===n.dir||a.rightAlign)&&(n.style.textAlign="right"),("rtl"===n.dir||a.numericInput)&&(n.dir="ltr",n.removeAttribute("dir"),a.isRTL=!0);var u,c,f,p,h=n.getAttribute(s);if(h&&""!==h&&(h=h.replace(new RegExp("'","g"),'"'),c=JSON.parse("{"+h+"}")),c){f=i;for(p in c)if("alias"===p.toLowerCase()){f=c[p];break}}l("alias",f),o.alias&&r(o.alias,o,a);for(u in a){if(c){f=i;for(p in c)if(p.toLowerCase()===u.toLowerCase()){f=c[p];break}}l(u,f)}return e.extend(!0,a,o),a}var c=this;return"string"==typeof l&&(l=n.getElementById(l)||n.querySelectorAll(l)),l=l.nodeName?[l]:l,e.each(l,function(t,n){var r=e.extend(!0,{},c.opts);u(n,r,e.extend(!0,{},c.userOptions),c.dataAttribute);var l=o(r,c.noMasksCache);l!==i&&(n.inputmask!==i&&n.inputmask.remove(),n.inputmask=new a(i,i,!0),n.inputmask.opts=r,n.inputmask.noMasksCache=c.noMasksCache,n.inputmask.userOptions=e.extend(!0,{},c.userOptions),n.inputmask.isRTL=r.isRTL,n.inputmask.el=n,n.inputmask.maskset=l,e.data(n,"_inputmask_opts",r),s.call(n.inputmask,{action:"mask"}))}),l&&l[0]?l[0].inputmask||this:this},option:function(t,n){return"string"==typeof t?this.opts[t]:"object"==typeof t?(e.extend(this.userOptions,t),this.el&&!0!==n&&this.mask(this.el),this):void 0},unmaskedvalue:function(e){return this.maskset=this.maskset||o(this.opts,this.noMasksCache),s.call(this,{action:"unmaskedvalue",value:e})},remove:function(){return s.call(this,{action:"remove"})},getemptymask:function(){return this.maskset=this.maskset||o(this.opts,this.noMasksCache),s.call(this,{action:"getemptymask"})},hasMaskedValue:function(){return!this.opts.autoUnmask},isComplete:function(){return this.maskset=this.maskset||o(this.opts,this.noMasksCache),s.call(this,{action:"isComplete"})},getmetadata:function(){return this.maskset=this.maskset||o(this.opts,this.noMasksCache),s.call(this,{action:"getmetadata"})},isValid:function(e){return this.maskset=this.maskset||o(this.opts,this.noMasksCache),s.call(this,{action:"isValid",value:e})},format:function(e,t){return this.maskset=this.maskset||o(this.opts,this.noMasksCache),s.call(this,{action:"format",value:e,metadata:t})},analyseMask:function(t,n,r){function o(e,t,n,i){this.matches=[],this.openGroup=e||!1,this.alternatorGroup=!1,this.isGroup=e||!1,this.isOptional=t||!1,this.isQuantifier=n||!1,this.isAlternator=i||!1,this.quantifier={min:1,max:1}}function s(t,o,s){s=s!==i?s:t.matches.length;var l=t.matches[s-1];if(n)0===o.indexOf("[")||y?t.matches.splice(s++,0,{fn:new RegExp(o,r.casing?"i":""),cardinality:1,optionality:t.isOptional,newBlockMarker:l===i||l.def!==o,casing:null,def:o,placeholder:i,nativeDef:o}):e.each(o.split(""),function(e,n){l=t.matches[s-1],t.matches.splice(s++,0,{fn:null,cardinality:0,optionality:t.isOptional,newBlockMarker:l===i||l.def!==n&&null!==l.fn,casing:null,def:r.staticDefinitionSymbol||n,placeholder:r.staticDefinitionSymbol!==i?n:i,nativeDef:n})}),y=!1;else{var u=(r.definitions?r.definitions[o]:i)||a.prototype.definitions[o];if(u&&!y){for(var c=u.prevalidator,f=c?c.length:0,p=1;p<u.cardinality;p++){var h=f>=p?c[p-1]:[],d=h.validator,m=h.cardinality;t.matches.splice(s++,0,{fn:d?"string"==typeof d?new RegExp(d,r.casing?"i":""):new function(){this.test=d}:new RegExp("."),cardinality:m||1,optionality:t.isOptional,newBlockMarker:l===i||l.def!==(u.definitionSymbol||o),casing:u.casing,def:u.definitionSymbol||o,placeholder:u.placeholder,nativeDef:o}),l=t.matches[s-1]}t.matches.splice(s++,0,{fn:u.validator?"string"==typeof u.validator?new RegExp(u.validator,r.casing?"i":""):new function(){this.test=u.validator}:new RegExp("."),cardinality:u.cardinality,optionality:t.isOptional,newBlockMarker:l===i||l.def!==(u.definitionSymbol||o),casing:u.casing,def:u.definitionSymbol||o,placeholder:u.placeholder,nativeDef:o})}else t.matches.splice(s++,0,{fn:null,cardinality:0,optionality:t.isOptional,newBlockMarker:l===i||l.def!==o&&null!==l.fn,casing:null,def:r.staticDefinitionSymbol||o,placeholder:r.staticDefinitionSymbol!==i?o:i,nativeDef:o}),y=!1}}function l(t){t&&t.matches&&e.each(t.matches,function(e,a){var o=t.matches[e+1];(o===i||o.matches===i||!1===o.isQuantifier)&&a&&a.isGroup&&(a.isGroup=!1,n||(s(a,r.groupmarker.start,0),!0!==a.openGroup&&s(a,r.groupmarker.end))),l(a)})}function u(){if(C.length>0){if(d=C[C.length-1],s(d,p),d.isAlternator){m=C.pop();for(var e=0;e<m.matches.length;e++)m.matches[e].isGroup=!1;C.length>0?(d=C[C.length-1],d.matches.push(m)):P.matches.push(m)}}else s(P,p)}function c(e){e.matches=e.matches.reverse();for(var t in e.matches)if(e.matches.hasOwnProperty(t)){var n=parseInt(t);if(e.matches[t].isQuantifier&&e.matches[n+1]&&e.matches[n+1].isGroup){var a=e.matches[t];e.matches.splice(t,1),e.matches.splice(n+1,0,a)}e.matches[t].matches!==i?e.matches[t]=c(e.matches[t]):e.matches[t]=function(e){return e===r.optionalmarker.start?e=r.optionalmarker.end:e===r.optionalmarker.end?e=r.optionalmarker.start:e===r.groupmarker.start?e=r.groupmarker.end:e===r.groupmarker.end&&(e=r.groupmarker.start),e}(e.matches[t])}return e}var f,p,h,d,m,v,g,k=/(?:[?*+]|\{[0-9\+\*]+(?:,[0-9\+\*]*)?\})|[^.?*+^${[]()|\\]+|./g,b=/\[\^?]?(?:[^\\\]]+|\\[\S\s]?)*]?|\\(?:0(?:[0-3][0-7]{0,2}|[4-7][0-7]?)?|[1-9][0-9]*|x[0-9A-Fa-f]{2}|u[0-9A-Fa-f]{4}|c[A-Za-z]|[\S\s]?)|\((?:\?[:=!]?)?|(?:[?*+]|\{[0-9]+(?:,[0-9]*)?\})\??|[^.?*+^${[()|\\]+|./g,y=!1,P=new o,C=[],x=[];for(n&&(r.optionalmarker.start=i,r.optionalmarker.end=i);f=n?b.exec(t):k.exec(t);){if(p=f[0],n)switch(p.charAt(0)){case"?":p="{0,1}";break;case"+":case"*":p="{"+p+"}"}if(y)u();else switch(p.charAt(0)){case r.escapeChar:y=!0,n&&u();break;case r.optionalmarker.end:case r.groupmarker.end:if(h=C.pop(),h.openGroup=!1,h!==i)if(C.length>0){if(d=C[C.length-1],d.matches.push(h),d.isAlternator){m=C.pop();for(var E=0;E<m.matches.length;E++)m.matches[E].isGroup=!1,m.matches[E].alternatorGroup=!1;C.length>0?(d=C[C.length-1],d.matches.push(m)):P.matches.push(m)}}else P.matches.push(h);else u();break;case r.optionalmarker.start:C.push(new o(!1,!0));break;case r.groupmarker.start:C.push(new o(!0));break;case r.quantifiermarker.start:var _=new o(!1,!1,!0);p=p.replace(/[{}]/g,"");var A=p.split(","),w=isNaN(A[0])?A[0]:parseInt(A[0]),O=1===A.length?w:isNaN(A[1])?A[1]:parseInt(A[1]);if("*"!==O&&"+"!==O||(w="*"===O?0:1),_.quantifier={min:w,max:O},C.length>0){var M=C[C.length-1].matches;f=M.pop(),f.isGroup||(g=new o(!0),g.matches.push(f),f=g),M.push(f),M.push(_)}else f=P.matches.pop(),f.isGroup||(g=new o(!0),g.matches.push(f),f=g),P.matches.push(f),P.matches.push(_);break;case r.alternatormarker:if(C.length>0){d=C[C.length-1];var S=d.matches[d.matches.length-1];v=d.openGroup&&(S.matches===i||!1===S.isGroup&&!1===S.isAlternator)?C.pop():d.matches.pop()}else v=P.matches.pop();if(v.isAlternator)C.push(v);else if(v.alternatorGroup?(m=C.pop(),v.alternatorGroup=!1):m=new o(!1,!1,!1,!0),m.matches.push(v),C.push(m),v.openGroup){v.openGroup=!1;var j=new o(!0);j.alternatorGroup=!0,C.push(j)}break;default:u()}}for(;C.length>0;)h=C.pop(),P.matches.push(h);return P.matches.length>0&&(l(P),x.push(P)),(r.numericInput||r.isRTL)&&c(x[0]),x}},a.extendDefaults=function(t){e.extend(!0,a.prototype.defaults,t)},a.extendDefinitions=function(t){e.extend(!0,a.prototype.definitions,t)},a.extendAliases=function(t){e.extend(!0,a.prototype.aliases,t)},a.format=function(e,t,n){return a(t).format(e,n)},a.unmask=function(e,t){return a(t).unmaskedvalue(e)},a.isValid=function(e,t){return a(t).isValid(e)},a.remove=function(t){e.each(t,function(e,t){t.inputmask&&t.inputmask.remove()})},a.escapeRegex=function(e){var t=["/",".","*","+","?","|","(",")","[","]","{","}","\\","$","^"];return e.replace(new RegExp("(\\"+t.join("|\\")+")","gim"),"\\$1")},a.keyCode={ALT:18,BACKSPACE:8,BACKSPACE_SAFARI:127,CAPS_LOCK:20,COMMA:188,COMMAND:91,COMMAND_LEFT:91,COMMAND_RIGHT:93,CONTROL:17,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,INSERT:45,LEFT:37,MENU:93,NUMPAD_ADD:107,NUMPAD_DECIMAL:110,NUMPAD_DIVIDE:111,NUMPAD_ENTER:108,NUMPAD_MULTIPLY:106,NUMPAD_SUBTRACT:109,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SHIFT:16,SPACE:32,TAB:9,UP:38,WINDOWS:91,X:88},a}),function(e){"function"==typeof define&&define.amd?define(["jquery","./inputmask"],e):"object"==typeof exports?module.exports=e(require("jquery"),require("./inputmask")):e(jQuery,window.Inputmask)}(function(e,t){return void 0===e.fn.inputmask&&(e.fn.inputmask=function(n,i){var a,r=this[0];if(void 0===i&&(i={}),"string"==typeof n)switch(n){case"unmaskedvalue":return r&&r.inputmask?r.inputmask.unmaskedvalue():e(r).val();case"remove":return this.each(function(){this.inputmask&&this.inputmask.remove()});case"getemptymask":return r&&r.inputmask?r.inputmask.getemptymask():"";case"hasMaskedValue":return!(!r||!r.inputmask)&&r.inputmask.hasMaskedValue();case"isComplete":return!r||!r.inputmask||r.inputmask.isComplete();case"getmetadata":return r&&r.inputmask?r.inputmask.getmetadata():void 0;case"setvalue":e(r).val(i),r&&void 0===r.inputmask&&e(r).triggerHandler("setvalue");break;case"option":if("string"!=typeof i)return this.each(function(){if(void 0!==this.inputmask)return this.inputmask.option(i)});if(r&&void 0!==r.inputmask)return r.inputmask.option(i);break;default:return i.alias=n,a=new t(i),this.each(function(){a.mask(this)})}else{if("object"==typeof n)return a=new t(n),void 0===n.mask&&void 0===n.alias?this.each(function(){if(void 0!==this.inputmask)return this.inputmask.option(n);a.mask(this)}):this.each(function(){a.mask(this)});if(void 0===n)return this.each(function(){a=new t(i),a.mask(this)})}}),e.fn.inputmask});