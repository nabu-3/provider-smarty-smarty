<?php

/** @license
 *  Copyright 2009-2011 Rafael Gutierrez Martinez
 *  Copyright 2012-2013 Welma WEB MKT LABS, S.L.
 *  Copyright 2014-2016 Where Ideas Simply Come True, S.L.
 *  Copyright 2017 nabu-3 Group
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

use providers\smarty\smarty\builders\CSmartyNabuDatetimeFunction;

/**
 * This function is a wrapper to call CSmartyNabuAssignFunction that implements all functionalities.
 * @author Rafael Gutierrez <rgutierrez@nabu-3.com>
 * @since 0.0.9
 * @version 0.1.1
 * @param mixed $params Params array passed by Smarty Analyzer
 * @param Smarty_Internal_Template $template Smarty Template
 */
function smarty_function_nabu_datetime($params, Smarty_Internal_Template $template)
{
    $render = new CSmartyNabuDatetimeFunction($params, $template);

    return $render->execute();
}
