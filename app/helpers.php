<?php


if (!function_exists('insertUsersLinks')) {
    /**
     * Given raw text replaces the usernames for links to their profile page
     * @param string $text raw text with usernames
     * @param string $classToAdd class to be added to the 'a' element
     * @return string text where the usernames (strings starting with @) have been replaced with their respective links (anchor tag)
     */
    function insertUsersLinks(string $text,string $classToAdd=null)
    {
        preg_match_all('/@(?<username>\S+)/', $text, $matches);
        $usernames = $matches['username'];
        foreach ($usernames as $username) {
            $userPageLink = '<a ';
            $userPageLink .= $classToAdd? ' class=" '.$classToAdd.'" ' :' ';
            $userPageLink .= 'href="/user/' . $username . '">@' . $username . '</a>';
            $text = preg_replace('/@' . $username . '/', $userPageLink, $text);
        }
        return $text;
    }
}
